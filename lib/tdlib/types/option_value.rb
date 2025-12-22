module TD::Types
  # Represents the value of an option.
  class OptionValue < Base
    autoload TD::Types.camelize('boolean'), 'tdlib/types/option_value/boolean'
    autoload TD::Types.camelize('empty'), 'tdlib/types/option_value/empty'
    autoload TD::Types.camelize('integer'), 'tdlib/types/option_value/integer'
    autoload TD::Types.camelize('string'), 'tdlib/types/option_value/string'
  end
end
