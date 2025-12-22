module TD::Types
  # Describes order in which upgraded gifts for resale will be sorted.
  class GiftForResaleOrder < Base
    autoload TD::Types.camelize('price'), 'tdlib/types/gift_for_resale_order/price'
    autoload TD::Types.camelize('price_change_date'), 'tdlib/types/gift_for_resale_order/price_change_date'
    autoload TD::Types.camelize('number'), 'tdlib/types/gift_for_resale_order/number'
  end
end
