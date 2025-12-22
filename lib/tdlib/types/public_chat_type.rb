module TD::Types
  # Describes type of public chat.
  class PublicChatType < Base
    autoload TD::Types.camelize('has_username'), 'tdlib/types/public_chat_type/has_username'
    autoload TD::Types.camelize('is_location_based'), 'tdlib/types/public_chat_type/is_location_based'
  end
end
