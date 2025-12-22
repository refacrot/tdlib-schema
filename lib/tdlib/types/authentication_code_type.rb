module TD::Types
  # Provides information about the method by which an authentication code is delivered to the user.
  class AuthenticationCodeType < Base
    autoload TD::Types.camelize('telegram_message'), 'tdlib/types/authentication_code_type/telegram_message'
    autoload TD::Types.camelize('sms'), 'tdlib/types/authentication_code_type/sms'
    autoload TD::Types.camelize('sms_word'), 'tdlib/types/authentication_code_type/sms_word'
    autoload TD::Types.camelize('sms_phrase'), 'tdlib/types/authentication_code_type/sms_phrase'
    autoload TD::Types.camelize('call'), 'tdlib/types/authentication_code_type/call'
    autoload TD::Types.camelize('flash_call'), 'tdlib/types/authentication_code_type/flash_call'
    autoload TD::Types.camelize('missed_call'), 'tdlib/types/authentication_code_type/missed_call'
    autoload TD::Types.camelize('fragment'), 'tdlib/types/authentication_code_type/fragment'
    autoload TD::Types.camelize('firebase_android'), 'tdlib/types/authentication_code_type/firebase_android'
    autoload TD::Types.camelize('firebase_ios'), 'tdlib/types/authentication_code_type/firebase_ios'
  end
end
