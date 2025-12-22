module TD::Types
  # Describes a collectible item that can be purchased at https://fragment.com.
  class CollectibleItemType < Base
    autoload TD::Types.camelize('username'), 'tdlib/types/collectible_item_type/username'
    autoload TD::Types.camelize('phone_number'), 'tdlib/types/collectible_item_type/phone_number'
  end
end
