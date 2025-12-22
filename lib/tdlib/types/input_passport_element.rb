module TD::Types
  # Contains information about a Telegram Passport element to be saved.
  class InputPassportElement < Base
    autoload TD::Types.camelize('personal_details'), 'tdlib/types/input_passport_element/personal_details'
    autoload TD::Types.camelize('passport'), 'tdlib/types/input_passport_element/passport'
    autoload TD::Types.camelize('driver_license'), 'tdlib/types/input_passport_element/driver_license'
    autoload TD::Types.camelize('identity_card'), 'tdlib/types/input_passport_element/identity_card'
    autoload TD::Types.camelize('internal_passport'), 'tdlib/types/input_passport_element/internal_passport'
    autoload TD::Types.camelize('address'), 'tdlib/types/input_passport_element/address'
    autoload TD::Types.camelize('utility_bill'), 'tdlib/types/input_passport_element/utility_bill'
    autoload TD::Types.camelize('bank_statement'), 'tdlib/types/input_passport_element/bank_statement'
    autoload TD::Types.camelize('rental_agreement'), 'tdlib/types/input_passport_element/rental_agreement'
    autoload TD::Types.camelize('passport_registration'), 'tdlib/types/input_passport_element/passport_registration'
    autoload TD::Types.camelize('temporary_registration'), 'tdlib/types/input_passport_element/temporary_registration'
    autoload TD::Types.camelize('phone_number'), 'tdlib/types/input_passport_element/phone_number'
    autoload TD::Types.camelize('email_address'), 'tdlib/types/input_passport_element/email_address'
  end
end
