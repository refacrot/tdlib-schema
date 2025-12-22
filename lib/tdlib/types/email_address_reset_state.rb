module TD::Types
  # Describes reset state of an email address.
  class EmailAddressResetState < Base
    autoload TD::Types.camelize('available'), 'tdlib/types/email_address_reset_state/available'
    autoload TD::Types.camelize('pending'), 'tdlib/types/email_address_reset_state/pending'
  end
end
