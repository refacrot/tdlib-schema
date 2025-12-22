module TD::Types
  # Describes a list of chats.
  class ChatList < Base
    autoload TD::Types.camelize('main'), 'tdlib/types/chat_list/main'
    autoload TD::Types.camelize('archive'), 'tdlib/types/chat_list/archive'
    autoload TD::Types.camelize('folder'), 'tdlib/types/chat_list/folder'
  end
end
