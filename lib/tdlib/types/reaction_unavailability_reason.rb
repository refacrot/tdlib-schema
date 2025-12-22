module TD::Types
  # Describes why the current user can't add reactions to the message, despite some other users can.
  class ReactionUnavailabilityReason < Base
    autoload TD::Types.camelize('anonymous_administrator'), 'tdlib/types/reaction_unavailability_reason/anonymous_administrator'
    autoload TD::Types.camelize('guest'), 'tdlib/types/reaction_unavailability_reason/guest'
  end
end
