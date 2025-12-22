module TD::Types
  # Represents a filter for type of the chats in which to search messages.
  class SearchMessagesChatTypeFilter < Base
    autoload TD::Types.camelize('private'), 'tdlib/types/search_messages_chat_type_filter/private'
    autoload TD::Types.camelize('group'), 'tdlib/types/search_messages_chat_type_filter/group'
    autoload TD::Types.camelize('channel'), 'tdlib/types/search_messages_chat_type_filter/channel'
  end
end
