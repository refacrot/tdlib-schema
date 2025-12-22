module TD::Types
  # Contains information about the sender of a message.
  class MessageSender < Base
    autoload TD::Types.camelize('user'), 'tdlib/types/message_sender/user'
    autoload TD::Types.camelize('chat'), 'tdlib/types/message_sender/chat'
  end
end
