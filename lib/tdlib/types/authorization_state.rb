module TD::Types
  # Represents the current authorization state of the TDLib client.
  class AuthorizationState < Base
    autoload TD::Types.camelize('wait_tdlib_parameters'), 'tdlib/types/authorization_state/wait_tdlib_parameters'
    autoload TD::Types.camelize('wait_phone_number'), 'tdlib/types/authorization_state/wait_phone_number'
    autoload TD::Types.camelize('wait_premium_purchase'), 'tdlib/types/authorization_state/wait_premium_purchase'
    autoload TD::Types.camelize('wait_email_address'), 'tdlib/types/authorization_state/wait_email_address'
    autoload TD::Types.camelize('wait_email_code'), 'tdlib/types/authorization_state/wait_email_code'
    autoload TD::Types.camelize('wait_code'), 'tdlib/types/authorization_state/wait_code'
    autoload TD::Types.camelize('wait_other_device_confirmation'), 'tdlib/types/authorization_state/wait_other_device_confirmation'
    autoload TD::Types.camelize('wait_registration'), 'tdlib/types/authorization_state/wait_registration'
    autoload TD::Types.camelize('wait_password'), 'tdlib/types/authorization_state/wait_password'
    autoload TD::Types.camelize('ready'), 'tdlib/types/authorization_state/ready'
    autoload TD::Types.camelize('logging_out'), 'tdlib/types/authorization_state/logging_out'
    autoload TD::Types.camelize('closing'), 'tdlib/types/authorization_state/closing'
    autoload TD::Types.camelize('closed'), 'tdlib/types/authorization_state/closed'
  end
end
