module TD::Types
  # Describes type of payment form.
  class PaymentFormType < Base
    autoload TD::Types.camelize('regular'), 'tdlib/types/payment_form_type/regular'
    autoload TD::Types.camelize('stars'), 'tdlib/types/payment_form_type/stars'
    autoload TD::Types.camelize('star_subscription'), 'tdlib/types/payment_form_type/star_subscription'
  end
end
