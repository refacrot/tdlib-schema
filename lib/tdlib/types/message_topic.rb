module TD::Types
  # Describes a topic of messages in a chat.
  class MessageTopic < Base
    autoload TD::Types.camelize('thread'), 'tdlib/types/message_topic/thread'
    autoload TD::Types.camelize('forum'), 'tdlib/types/message_topic/forum'
    autoload TD::Types.camelize('direct_messages'), 'tdlib/types/message_topic/direct_messages'
    autoload TD::Types.camelize('saved_messages'), 'tdlib/types/message_topic/saved_messages'
  end
end
