module TD::Types
  # Contains authentication data for an email address.
  class EmailAddressAuthentication < Base
    autoload TD::Types.camelize('code'), 'tdlib/types/email_address_authentication/code'
    autoload TD::Types.camelize('apple_id'), 'tdlib/types/email_address_authentication/apple_id'
    autoload TD::Types.camelize('google_id'), 'tdlib/types/email_address_authentication/google_id'
  end
end
