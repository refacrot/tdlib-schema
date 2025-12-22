module TD::Types
  # Contains the description of an error in a Telegram Passport element; for bots only.
  class InputPassportElementErrorSource < Base
    autoload TD::Types.camelize('unspecified'), 'tdlib/types/input_passport_element_error_source/unspecified'
    autoload TD::Types.camelize('data_field'), 'tdlib/types/input_passport_element_error_source/data_field'
    autoload TD::Types.camelize('front_side'), 'tdlib/types/input_passport_element_error_source/front_side'
    autoload TD::Types.camelize('reverse_side'), 'tdlib/types/input_passport_element_error_source/reverse_side'
    autoload TD::Types.camelize('selfie'), 'tdlib/types/input_passport_element_error_source/selfie'
    autoload TD::Types.camelize('translation_file'), 'tdlib/types/input_passport_element_error_source/translation_file'
    autoload TD::Types.camelize('translation_files'), 'tdlib/types/input_passport_element_error_source/translation_files'
    autoload TD::Types.camelize('file'), 'tdlib/types/input_passport_element_error_source/file'
    autoload TD::Types.camelize('files'), 'tdlib/types/input_passport_element_error_source/files'
  end
end
