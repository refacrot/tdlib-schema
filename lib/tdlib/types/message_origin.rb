module TD::Types
  # Contains information about the origin of a message.
  class MessageOrigin < Base
    autoload TD::Types.camelize('user'), 'tdlib/types/message_origin/user'
    autoload TD::Types.camelize('hidden_user'), 'tdlib/types/message_origin/hidden_user'
    autoload TD::Types.camelize('chat'), 'tdlib/types/message_origin/chat'
    autoload TD::Types.camelize('channel'), 'tdlib/types/message_origin/channel'
  end
end
