module TD::Types
  # Contains information about a Telegram Passport element.
  class PassportElement < Base
    autoload TD::Types.camelize('personal_details'), 'tdlib/types/passport_element/personal_details'
    autoload TD::Types.camelize('passport'), 'tdlib/types/passport_element/passport'
    autoload TD::Types.camelize('driver_license'), 'tdlib/types/passport_element/driver_license'
    autoload TD::Types.camelize('identity_card'), 'tdlib/types/passport_element/identity_card'
    autoload TD::Types.camelize('internal_passport'), 'tdlib/types/passport_element/internal_passport'
    autoload TD::Types.camelize('address'), 'tdlib/types/passport_element/address'
    autoload TD::Types.camelize('utility_bill'), 'tdlib/types/passport_element/utility_bill'
    autoload TD::Types.camelize('bank_statement'), 'tdlib/types/passport_element/bank_statement'
    autoload TD::Types.camelize('rental_agreement'), 'tdlib/types/passport_element/rental_agreement'
    autoload TD::Types.camelize('passport_registration'), 'tdlib/types/passport_element/passport_registration'
    autoload TD::Types.camelize('temporary_registration'), 'tdlib/types/passport_element/temporary_registration'
    autoload TD::Types.camelize('phone_number'), 'tdlib/types/passport_element/phone_number'
    autoload TD::Types.camelize('email_address'), 'tdlib/types/passport_element/email_address'
  end
end
