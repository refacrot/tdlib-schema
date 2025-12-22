module TD::Types
  # Contains information about a payment provider.
  class PaymentProvider < Base
    autoload TD::Types.camelize('smart_glocal'), 'tdlib/types/payment_provider/smart_glocal'
    autoload TD::Types.camelize('stripe'), 'tdlib/types/payment_provider/stripe'
    autoload TD::Types.camelize('other'), 'tdlib/types/payment_provider/other'
  end
end
