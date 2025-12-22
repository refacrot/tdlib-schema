module TD::Types
  # Describes type of emoji status.
  class EmojiStatusType < Base
    autoload TD::Types.camelize('custom_emoji'), 'tdlib/types/emoji_status_type/custom_emoji'
    autoload TD::Types.camelize('upgraded_gift'), 'tdlib/types/emoji_status_type/upgraded_gift'
  end
end
