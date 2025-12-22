module TD::Types
  # Represents the categories of chats for which a list of frequently used chats can be retrieved.
  class TopChatCategory < Base
    autoload TD::Types.camelize('users'), 'tdlib/types/top_chat_category/users'
    autoload TD::Types.camelize('bots'), 'tdlib/types/top_chat_category/bots'
    autoload TD::Types.camelize('groups'), 'tdlib/types/top_chat_category/groups'
    autoload TD::Types.camelize('channels'), 'tdlib/types/top_chat_category/channels'
    autoload TD::Types.camelize('inline_bots'), 'tdlib/types/top_chat_category/inline_bots'
    autoload TD::Types.camelize('web_app_bots'), 'tdlib/types/top_chat_category/web_app_bots'
    autoload TD::Types.camelize('calls'), 'tdlib/types/top_chat_category/calls'
    autoload TD::Types.camelize('forward_chats'), 'tdlib/types/top_chat_category/forward_chats'
  end
end
