module TD::Types
  # Contains information about the payment method chosen by the user.
  class InputCredentials < Base
    autoload TD::Types.camelize('saved'), 'tdlib/types/input_credentials/saved'
    autoload TD::Types.camelize('new'), 'tdlib/types/input_credentials/new'
    autoload TD::Types.camelize('apple_pay'), 'tdlib/types/input_credentials/apple_pay'
    autoload TD::Types.camelize('google_pay'), 'tdlib/types/input_credentials/google_pay'
  end
end
