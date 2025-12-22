module TD::Types
  # Contains information about the message or the story to be replied.
  class InputMessageReplyTo < Base
    autoload TD::Types.camelize('message'), 'tdlib/types/input_message_reply_to/message'
    autoload TD::Types.camelize('external_message'), 'tdlib/types/input_message_reply_to/external_message'
    autoload TD::Types.camelize('story'), 'tdlib/types/input_message_reply_to/story'
  end
end
