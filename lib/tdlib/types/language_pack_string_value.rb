module TD::Types
  # Represents the value of a string in a language pack.
  class LanguagePackStringValue < Base
    autoload TD::Types.camelize('ordinary'), 'tdlib/types/language_pack_string_value/ordinary'
    autoload TD::Types.camelize('pluralized'), 'tdlib/types/language_pack_string_value/pluralized'
    autoload TD::Types.camelize('deleted'), 'tdlib/types/language_pack_string_value/deleted'
  end
end
