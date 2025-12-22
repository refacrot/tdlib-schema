module TD::Types
  # Describes format of a sticker.
  class StickerFormat < Base
    autoload TD::Types.camelize('webp'), 'tdlib/types/sticker_format/webp'
    autoload TD::Types.camelize('tgs'), 'tdlib/types/sticker_format/tgs'
    autoload TD::Types.camelize('webm'), 'tdlib/types/sticker_format/webm'
  end
end
