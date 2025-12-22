module TD::Types
  # Describes type of the request for which a code is sent to a phone number.
  class PhoneNumberCodeType < Base
    autoload TD::Types.camelize('change'), 'tdlib/types/phone_number_code_type/change'
    autoload TD::Types.camelize('verify'), 'tdlib/types/phone_number_code_type/verify'
    autoload TD::Types.camelize('confirm_ownership'), 'tdlib/types/phone_number_code_type/confirm_ownership'
  end
end
