module TD::Types
  # Contains identifier of an upgraded gift attribute to search for.
  class UpgradedGiftAttributeId < Base
    autoload TD::Types.camelize('model'), 'tdlib/types/upgraded_gift_attribute_id/model'
    autoload TD::Types.camelize('symbol'), 'tdlib/types/upgraded_gift_attribute_id/symbol'
    autoload TD::Types.camelize('backdrop'), 'tdlib/types/upgraded_gift_attribute_id/backdrop'
  end
end
