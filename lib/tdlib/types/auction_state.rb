module TD::Types
  # Describes state of an auction.
  class AuctionState < Base
    autoload TD::Types.camelize('active'), 'tdlib/types/auction_state/active'
    autoload TD::Types.camelize('finished'), 'tdlib/types/auction_state/finished'
  end
end
