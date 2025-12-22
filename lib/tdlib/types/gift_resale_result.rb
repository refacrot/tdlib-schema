module TD::Types
  # Describes result of sending a resold gift.
  class GiftResaleResult < Base
    autoload TD::Types.camelize('ok'), 'tdlib/types/gift_resale_result/ok'
    autoload TD::Types.camelize('price_increased'), 'tdlib/types/gift_resale_result/price_increased'
  end
end
