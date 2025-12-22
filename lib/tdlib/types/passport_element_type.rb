module TD::Types
  # Contains the type of Telegram Passport element.
  class PassportElementType < Base
    autoload TD::Types.camelize('personal_details'), 'tdlib/types/passport_element_type/personal_details'
    autoload TD::Types.camelize('passport'), 'tdlib/types/passport_element_type/passport'
    autoload TD::Types.camelize('driver_license'), 'tdlib/types/passport_element_type/driver_license'
    autoload TD::Types.camelize('identity_card'), 'tdlib/types/passport_element_type/identity_card'
    autoload TD::Types.camelize('internal_passport'), 'tdlib/types/passport_element_type/internal_passport'
    autoload TD::Types.camelize('address'), 'tdlib/types/passport_element_type/address'
    autoload TD::Types.camelize('utility_bill'), 'tdlib/types/passport_element_type/utility_bill'
    autoload TD::Types.camelize('bank_statement'), 'tdlib/types/passport_element_type/bank_statement'
    autoload TD::Types.camelize('rental_agreement'), 'tdlib/types/passport_element_type/rental_agreement'
    autoload TD::Types.camelize('passport_registration'), 'tdlib/types/passport_element_type/passport_registration'
    autoload TD::Types.camelize('temporary_registration'), 'tdlib/types/passport_element_type/temporary_registration'
    autoload TD::Types.camelize('phone_number'), 'tdlib/types/passport_element_type/phone_number'
    autoload TD::Types.camelize('email_address'), 'tdlib/types/passport_element_type/email_address'
  end
end
