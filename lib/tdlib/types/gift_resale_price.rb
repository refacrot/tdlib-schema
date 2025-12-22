module TD::Types
  # Describes price of a resold gift.
  class GiftResalePrice < Base
    autoload TD::Types.camelize('star'), 'tdlib/types/gift_resale_price/star'
    autoload TD::Types.camelize('ton'), 'tdlib/types/gift_resale_price/ton'
  end
end
