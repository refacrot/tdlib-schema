module TD::Types
  # Describes reactions available in the chat.
  class ChatAvailableReactions < Base
    autoload TD::Types.camelize('all'), 'tdlib/types/chat_available_reactions/all'
    autoload TD::Types.camelize('some'), 'tdlib/types/chat_available_reactions/some'
  end
end
