module TD::Types
  # Describes type of message reaction.
  class ReactionType < Base
    autoload TD::Types.camelize('emoji'), 'tdlib/types/reaction_type/emoji'
    autoload TD::Types.camelize('custom_emoji'), 'tdlib/types/reaction_type/custom_emoji'
    autoload TD::Types.camelize('paid'), 'tdlib/types/reaction_type/paid'
  end
end
