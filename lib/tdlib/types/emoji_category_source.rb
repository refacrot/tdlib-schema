module TD::Types
  # Describes source of stickers for an emoji category.
  class EmojiCategorySource < Base
    autoload TD::Types.camelize('search'), 'tdlib/types/emoji_category_source/search'
    autoload TD::Types.camelize('premium'), 'tdlib/types/emoji_category_source/premium'
  end
end
