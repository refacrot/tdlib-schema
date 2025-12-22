module TD::Types
  # Contains information about the sending state of the message.
  class MessageSendingState < Base
    autoload TD::Types.camelize('pending'), 'tdlib/types/message_sending_state/pending'
    autoload TD::Types.camelize('failed'), 'tdlib/types/message_sending_state/failed'
  end
end
