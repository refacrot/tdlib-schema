module TD::Types
  # Describes type of emoji effect.
  class MessageEffectType < Base
    autoload TD::Types.camelize('emoji_reaction'), 'tdlib/types/message_effect_type/emoji_reaction'
    autoload TD::Types.camelize('premium_sticker'), 'tdlib/types/message_effect_type/premium_sticker'
  end
end
