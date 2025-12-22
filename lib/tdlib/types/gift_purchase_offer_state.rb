module TD::Types
  # Describes state of a gift purchase offer.
  class GiftPurchaseOfferState < Base
    autoload TD::Types.camelize('pending'), 'tdlib/types/gift_purchase_offer_state/pending'
    autoload TD::Types.camelize('accepted'), 'tdlib/types/gift_purchase_offer_state/accepted'
    autoload TD::Types.camelize('rejected'), 'tdlib/types/gift_purchase_offer_state/rejected'
  end
end
