# frozen_string_literal: true

require 'active_support/all'

class Parser < Thor::Group
  include Thor::Actions

  AUTOLOAD_BASE_DIR  = 'tdlib/types'.freeze
  TYPES_DIR = "lib/#{AUTOLOAD_BASE_DIR}".freeze
  TD_API_TL_LOCATION = 'td/td/generate/scheme/td_api.tl'.freeze

  attr_reader :klasses, :functions, :class_hierarchy, :lookup_table

  def self.source_root
    File.dirname(__FILE__)
  end

  def cleanup
    puts "\n"
    puts "=" * 100
    puts "<<< Removing #{TYPES_DIR} directory"
    puts "\n"

    FileUtils.rmtree TYPES_DIR
  end

  def prepare
    puts ">>> Creating #{TYPES_DIR} directory"

    FileUtils.mkdir_p TYPES_DIR
  end

  def write_base_class
    puts "\n"
    puts "=" * 100
    puts ">>> Generating Base class"
    puts "\n"

    template('templates/base.rb.tt', "#{TYPES_DIR}/base.rb")
  end

  def extract_entities
    @klasses = []
    @functions = []

    current_part = nil

    File.foreach(TD_API_TL_LOCATION, '', chomp: true) do |line|
      if current_part.nil? && line.start_with?('//@description')
        current_part = :classes
      elsif current_part == :classes && line.start_with?('---functions')
        current_part = :functions
        next
      end

      if current_part == :classes
        @klasses << parse_tl_entry(line)
      elsif current_part == :functions
        @functions << line
      end
    end
  end

  def prepare_data
    @class_hierarchy = build_hierarchy(klasses)
    @lookup_table = build_lookup_table(klasses)
    @lookup_regex = Regexp.union(lookup_table.keys.select { it.match?(/[a-z]+[A-Z][a-z]+/) }.map { /\W#{it}\W/ })
  end

  def write_classes
    puts "\n"
    puts "=" * 100
    puts ">>> Generating Types classes"
    puts "\n"

    klasses.each do |class_info|
      class_name       = normalize_class_name(class_info[:class], class_info[:super_class])
      attributes       = class_info[:arguments]
      description      = class_info[:description]
      super_class_name = class_info[:super_class].camelcase

      subclasses = class_hierarchy[class_info[:class]] || []
      types = subclasses.map do |subclass|
        type = subclass.sub(class_name, '').underscore
        {
          name: type,
          path: "#{AUTOLOAD_BASE_DIR}/#{class_name.underscore}/#{type}"
        }
      end

      if super_class_name == 'Base'
        file_name  = class_name.underscore
        class_name = "#{class_name} < Base"
      else
        file_name  = "#{super_class_name.underscore}/#{class_name.sub(super_class_name, '').underscore}"
        class_name = "#{super_class_name}::#{class_name.sub(super_class_name, '')} < #{super_class_name}"
      end

      description    = wrap_comment(description)                 if description.present?
      attributes_doc = attrs_to_yard_comment(attributes, 'attr') if attributes.present?

      template('templates/klass.rb.tt', "#{TYPES_DIR}/#{file_name}.rb", class_name:, description:, attributes_doc:, types:, attributes:)
    end
  end

  def write_types_class
    puts "\n"
    puts "=" * 100
    puts ">>> Generating Types class"
    puts "\n"

    lt_max_length = lookup_table.max_by { |k, _| k.length }[0].length
    lt_formatted = lookup_table.map do |k, v|
      indent = " " * (lt_max_length - k.length + 1)

      "'#{k}'#{indent}=> '#{v}'"
    end

    template('templates/types.rb.tt', 'lib/tdlib/types.rb', lookup_table: lt_formatted, class_hierarchy:)
  end

  def convert_functions
    puts "\n"
    puts "=" * 100
    puts ">>> Converting functions"

    @functions = functions.map { parse_tl_entry(it) }.sort_by { it[:class] }

    # Converts TDApi functions into methods. Still need human touch haha
    methods = functions.map do |func|
      method_name  = func[:class].underscore
      params       = func[:arguments]
      description  = func[:description]

      param_max_length = params.merge({'@type' => nil}).max_by { |k, _| k.length }[0].length

      if params.any?
        params_doc = attrs_to_yard_comment(params, 'param')

        if method_name == 'set_password'
          method_params = params.map do |attr, info|
            #set default value to false
            if attr == 'set_recovery_email_address'
              "#{attr}: false"
            else
              # use named arguments
              "#{attr}:#{ " nil" if info[:optional] }"
            end
          end.join(", ")
        else
          method_params = params.map do |attr, info|
            "#{attr}:#{ " nil" if info[:optional] }"
          end.join(", ")
        end

        method_params = "(#{wrap_params(method_params, 118 - (method_name.length + 5), method_name.length + 7)})"

        func_params = ",\n              " + params.map do |attr, info|
          indent = " " * (param_max_length - attr.length + 1)

          "'#{attr}'#{indent}=> #{attr}"
        end.join(",\n              ")
      end

      # TODO: Replace InputMessageContent and others (see #normalize_class_name)
      return_class = type_to_comment_type("TD::Types::#{func[:super_class].camelcase}")
      params_doc = if params_doc.blank?
        "  # @return [#{return_class}]"
      else
        params_doc + "\n  # @return [#{return_class}]"
      end
      description = wrap_comment(description) if description.present?

      {
        name: method_name,
        params: method_params,
        description: description,
        params_doc: params_doc,
        content: "broadcast('@type'#{" " * (param_max_length - 4)}=> '#{func[:class]}'#{func_params})"
      }
    end

    template('templates/client_methods.rb.tt', 'lib/tdlib/client_methods.rb', methods:)
  end

  def finalize
    puts "\n"
    puts "=" * 100
    puts "    DONE!"
    puts "      Please look through client_methods.rb carefully, especially the set_password method!"
    puts "=" * 100
  end

  private

  def parse_tl_entry(tl_entry)
    info = {}
    arguments = {}

    # A fix for multiline comments
    tl_entry.gsub!("\n//-", " ")
    tl_entry.strip!
    tl_entry.split("\n").each do |line|
      if line.start_with?('//')
        line.sub('//@', '').split(' @').each do |at_statement|
          if at_statement.start_with?('class')
            info[:class] = at_statement[6..-1]
          elsif at_statement.start_with?('description')
            info[:description] = at_statement[12..-1]
          elsif at_statement.start_with?('param_description')
            arguments.deep_merge!(parse_argument_description('description', at_statement[18..-1]))
          else
            argument = at_statement.split(' ')[0]
            description = at_statement[(argument.length + 1)..-1]

            arguments.deep_merge!(parse_argument_description(argument, description))
          end
        end
      else
        args, super_class = line.sub(';', '').split(" = ")
        args = args.split(' ')

        info[:class] = args[0]
        info[:super_class] = super_class

        args = (args[1..-1] || []).map do |a|
          arg, type = a.split(':')

          { arg => { type: parse_tl_type(type) } }
        end.reduce(&:merge) || {}

        arguments.deep_merge!(args)
      end
    end

    if !info[:super_class] || info[:class].downcase == info[:super_class].downcase
      info[:super_class] = 'Base'
    end

    # Setting all arguments to optional, if at least one argument stated to be required
    # noinspection RubySimplifyBooleanInspection
    if arguments.any? { |_, v| v[:optional] == false }
      arguments.select { |_, v| v[:optional] == nil }.each { |k, _| arguments[k][:optional] = true }
    end

    info[:arguments] = arguments

    info
  end

  def parse_argument_description(argument, description)
    statements = description.split('; ')[1..-1]
    statements = description.split(', ')[1..-1] if statements.length.zero?

    optional = nil

    if statements.length.positive?
      statements.each do |statement|
        statement.downcase!

        if statement.match?(/(can be null|may be null|can be empty|may be empty|optional|if empty|empty until|empty for|if available)/)
          optional = true
        elsif statement.match?(/(must be non-empty)/)
          optional = false
        end
      end
    end

    {
      argument => {
        description: description,
        optional: optional
      }
    }
  end

  def parse_tl_type(type)
    if (vector = type.scan(/[vV]ector<(.*)>/)).length.positive?
      "TD::Types::Array.of(#{parse_tl_type(vector[0][0])})"
    elsif type.match?(/[iI]nt\d\d/)
      'TD::Types::Coercible::Integer'
    elsif type.match?(/[dD]ouble/)
      'TD::Types::Coercible::Float'
    elsif type.match?(/[bB]ytes/)
      'TD::Types::Coercible::String'
    else
      "TD::Types::#{type.camelcase}"
    end
  end

  def build_hierarchy(classes)
    hierarchy = {}

    classes.each do |c|
      (hierarchy[c[:super_class].camelcase] ||= []).push(normalize_class_name(c[:class], c[:super_class]))
    end

    hierarchy
  end

  def build_lookup_table(classes)
    result = {}

    classes.each do |c|
      super_class_name = c[:super_class].camelcase

      class_name = normalize_class_name(c[:class], c[:super_class])
      class_name = "#{super_class_name}::#{class_name.sub(super_class_name, '')}" if super_class_name != 'Base'

      result[c[:class]] = class_name
    end

    result
  end

  def normalize_class_name(class_name, super_class_name)
    class_name = class_name.camelcase

    case super_class_name
    when 'ChatEventAction'
      class_name.sub('ChatEvent', '')
    when 'InputMessageContent'
      class_name.sub('InputMessage', '')
    when 'MessageContent'
      class_name.sub('Message', '')
    else
      class_name
    end
  end

  # Generates YARD documentation comment for each param
  def attrs_to_yard_comment(attrs, key = 'attr')
    attrs.map do |attr, info|
      type = type_to_comment_type(info[:type])
      description = info[:description].gsub(@lookup_regex) do |m|
        lookup_table[m.strip] ? "#{m[0]}{TD::Types::#{lookup_table[m.strip]}}#{m[-1]}" : m
      end

      wrap_comment("@#{key} #{attr} [#{type}#{", nil" if info[:optional]}] #{description}")
    end.join("\n")
  end

  def type_to_comment_type(type)
    type.gsub('TD::Types::Array.of(', 'Array<').gsub(')', '>').
      gsub('TD::Types::Coercible::Integer', 'Integer').
      gsub('TD::Types::Coercible::Float',   'Float').
      gsub('TD::Types::Coercible::String',  'String').
      gsub('TD::Types::Bool',    'Boolean')
  end

  # Partially taken from ActionView's word_wrap. Sowwy ;w;
  def wrap_comment(comment, line_width: 117, break_sequence: "\n  #   ")
    comment.split('. ').map.with_index do |sentence, i|
      comment_mark = i.zero? ? "  # " : "  #   "
      line = "#{comment_mark}#{sentence}.".split("\n").collect!.with_index do |line, j|
        if line.length > line_width
          line.gsub(/(.{1,#{line_width}})(\s+|$)/, "\\1#{break_sequence}")
        else
          line
        end
      end.join(break_sequence)

      if line.end_with?(break_sequence)
        line = line[0..-(break_sequence.length + 1)]
      end

      line
    end.join("\n")
  end

  def wrap_params(param_string, max_length, indent_num)
    if param_string.length > max_length
      param_string.gsub(/(.{1,#{max_length}})(\s+|$)/, "\\1\n#{' ' * indent_num}").strip
    else
      param_string
    end
  end
end
