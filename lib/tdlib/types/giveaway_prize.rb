module TD::Types
  # Contains information about a giveaway prize.
  class GiveawayPrize < Base
    autoload TD::Types.camelize('premium'), 'tdlib/types/giveaway_prize/premium'
    autoload TD::Types.camelize('stars'), 'tdlib/types/giveaway_prize/stars'
  end
end
