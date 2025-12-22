module TD::Types
  # Describes type of paid message reaction.
  class PaidReactionType < Base
    autoload TD::Types.camelize('regular'), 'tdlib/types/paid_reaction_type/regular'
    autoload TD::Types.camelize('anonymous'), 'tdlib/types/paid_reaction_type/anonymous'
    autoload TD::Types.camelize('chat'), 'tdlib/types/paid_reaction_type/chat'
  end
end
