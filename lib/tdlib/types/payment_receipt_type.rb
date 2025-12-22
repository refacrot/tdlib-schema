module TD::Types
  # Describes type of successful payment.
  class PaymentReceiptType < Base
    autoload TD::Types.camelize('regular'), 'tdlib/types/payment_receipt_type/regular'
    autoload TD::Types.camelize('stars'), 'tdlib/types/payment_receipt_type/stars'
  end
end
