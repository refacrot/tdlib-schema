module TD::Types
  # Contains information about status of a user in a giveaway.
  class GiveawayParticipantStatus < Base
    autoload TD::Types.camelize('eligible'), 'tdlib/types/giveaway_participant_status/eligible'
    autoload TD::Types.camelize('participating'), 'tdlib/types/giveaway_participant_status/participating'
    autoload TD::Types.camelize('already_was_member'), 'tdlib/types/giveaway_participant_status/already_was_member'
    autoload TD::Types.camelize('administrator'), 'tdlib/types/giveaway_participant_status/administrator'
    autoload TD::Types.camelize('disallowed_country'), 'tdlib/types/giveaway_participant_status/disallowed_country'
  end
end
