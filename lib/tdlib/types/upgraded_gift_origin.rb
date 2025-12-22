module TD::Types
  # Describes origin from which the upgraded gift was obtained.
  class UpgradedGiftOrigin < Base
    autoload TD::Types.camelize('upgrade'), 'tdlib/types/upgraded_gift_origin/upgrade'
    autoload TD::Types.camelize('transfer'), 'tdlib/types/upgraded_gift_origin/transfer'
    autoload TD::Types.camelize('resale'), 'tdlib/types/upgraded_gift_origin/resale'
    autoload TD::Types.camelize('blockchain'), 'tdlib/types/upgraded_gift_origin/blockchain'
    autoload TD::Types.camelize('prepaid_upgrade'), 'tdlib/types/upgraded_gift_origin/prepaid_upgrade'
    autoload TD::Types.camelize('offer'), 'tdlib/types/upgraded_gift_origin/offer'
  end
end
