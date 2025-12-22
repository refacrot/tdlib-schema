module TD::Types
  # Describes a photo to be set as a user profile or chat photo.
  class InputChatPhoto < Base
    autoload TD::Types.camelize('previous'), 'tdlib/types/input_chat_photo/previous'
    autoload TD::Types.camelize('static'), 'tdlib/types/input_chat_photo/static'
    autoload TD::Types.camelize('animation'), 'tdlib/types/input_chat_photo/animation'
    autoload TD::Types.camelize('sticker'), 'tdlib/types/input_chat_photo/sticker'
  end
end
