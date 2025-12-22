module TD::Types
  # Contains full information about sticker type.
  class StickerFullType < Base
    autoload TD::Types.camelize('regular'), 'tdlib/types/sticker_full_type/regular'
    autoload TD::Types.camelize('mask'), 'tdlib/types/sticker_full_type/mask'
    autoload TD::Types.camelize('custom_emoji'), 'tdlib/types/sticker_full_type/custom_emoji'
  end
end
