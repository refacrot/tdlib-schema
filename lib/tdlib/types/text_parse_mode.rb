module TD::Types
  # Describes the way the text needs to be parsed for text entities.
  class TextParseMode < Base
    autoload TD::Types.camelize('markdown'), 'tdlib/types/text_parse_mode/markdown'
    autoload TD::Types.camelize('html'), 'tdlib/types/text_parse_mode/html'
  end
end
