module TD::Types
  # Describes read date of a recent outgoing message in a private chat.
  class MessageReadDate < Base
    autoload TD::Types.camelize('read'), 'tdlib/types/message_read_date/read'
    autoload TD::Types.camelize('unread'), 'tdlib/types/message_read_date/unread'
    autoload TD::Types.camelize('too_old'), 'tdlib/types/message_read_date/too_old'
    autoload TD::Types.camelize('user_privacy_restricted'), 'tdlib/types/message_read_date/user_privacy_restricted'
    autoload TD::Types.camelize('my_privacy_restricted'), 'tdlib/types/message_read_date/my_privacy_restricted'
  end
end
