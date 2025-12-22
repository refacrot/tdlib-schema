module TD::Types
  # Describes type of emoji category.
  class EmojiCategoryType < Base
    autoload TD::Types.camelize('default'), 'tdlib/types/emoji_category_type/default'
    autoload TD::Types.camelize('regular_stickers'), 'tdlib/types/emoji_category_type/regular_stickers'
    autoload TD::Types.camelize('emoji_status'), 'tdlib/types/emoji_category_type/emoji_status'
    autoload TD::Types.camelize('chat_photo'), 'tdlib/types/emoji_category_type/chat_photo'
  end
end
