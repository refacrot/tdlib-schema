module TD::Types
  # Contains information about a giveaway.
  class GiveawayInfo < Base
    autoload TD::Types.camelize('ongoing'), 'tdlib/types/giveaway_info/ongoing'
    autoload TD::Types.camelize('completed'), 'tdlib/types/giveaway_info/completed'
  end
end
