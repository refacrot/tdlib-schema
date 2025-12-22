module TD::Types
  # Describes type of sticker, which was used to create a chat photo.
  class ChatPhotoStickerType < Base
    autoload TD::Types.camelize('regular_or_mask'), 'tdlib/types/chat_photo_sticker_type/regular_or_mask'
    autoload TD::Types.camelize('custom_emoji'), 'tdlib/types/chat_photo_sticker_type/custom_emoji'
  end
end
