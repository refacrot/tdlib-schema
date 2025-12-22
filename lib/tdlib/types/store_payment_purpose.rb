module TD::Types
  # Describes a purpose of an in-store payment.
  class StorePaymentPurpose < Base
    autoload TD::Types.camelize('premium_subscription'), 'tdlib/types/store_payment_purpose/premium_subscription'
    autoload TD::Types.camelize('premium_gift'), 'tdlib/types/store_payment_purpose/premium_gift'
    autoload TD::Types.camelize('premium_gift_codes'), 'tdlib/types/store_payment_purpose/premium_gift_codes'
    autoload TD::Types.camelize('premium_giveaway'), 'tdlib/types/store_payment_purpose/premium_giveaway'
    autoload TD::Types.camelize('star_giveaway'), 'tdlib/types/store_payment_purpose/star_giveaway'
    autoload TD::Types.camelize('stars'), 'tdlib/types/store_payment_purpose/stars'
    autoload TD::Types.camelize('gifted_stars'), 'tdlib/types/store_payment_purpose/gifted_stars'
  end
end
