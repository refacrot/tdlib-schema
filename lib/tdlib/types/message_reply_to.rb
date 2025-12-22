module TD::Types
  # Contains information about the message or the story a message is replying to.
  class MessageReplyTo < Base
    autoload TD::Types.camelize('message'), 'tdlib/types/message_reply_to/message'
    autoload TD::Types.camelize('story'), 'tdlib/types/message_reply_to/story'
  end
end
