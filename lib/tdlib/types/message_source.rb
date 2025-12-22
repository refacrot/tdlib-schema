module TD::Types
  # Describes source of a message.
  class MessageSource < Base
    autoload TD::Types.camelize('chat_history'), 'tdlib/types/message_source/chat_history'
    autoload TD::Types.camelize('message_thread_history'), 'tdlib/types/message_source/message_thread_history'
    autoload TD::Types.camelize('forum_topic_history'), 'tdlib/types/message_source/forum_topic_history'
    autoload TD::Types.camelize('direct_messages_chat_topic_history'), 'tdlib/types/message_source/direct_messages_chat_topic_history'
    autoload TD::Types.camelize('history_preview'), 'tdlib/types/message_source/history_preview'
    autoload TD::Types.camelize('chat_list'), 'tdlib/types/message_source/chat_list'
    autoload TD::Types.camelize('search'), 'tdlib/types/message_source/search'
    autoload TD::Types.camelize('chat_event_log'), 'tdlib/types/message_source/chat_event_log'
    autoload TD::Types.camelize('notification'), 'tdlib/types/message_source/notification'
    autoload TD::Types.camelize('screenshot'), 'tdlib/types/message_source/screenshot'
    autoload TD::Types.camelize('other'), 'tdlib/types/message_source/other'
  end
end
