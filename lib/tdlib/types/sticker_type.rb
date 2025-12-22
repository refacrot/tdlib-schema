module TD::Types
  # Describes type of sticker.
  class StickerType < Base
    autoload TD::Types.camelize('regular'), 'tdlib/types/sticker_type/regular'
    autoload TD::Types.camelize('mask'), 'tdlib/types/sticker_type/mask'
    autoload TD::Types.camelize('custom_emoji'), 'tdlib/types/sticker_type/custom_emoji'
  end
end
