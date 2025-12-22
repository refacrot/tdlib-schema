module TD::Types
  # Contains detailed information about a notification.
  class NotificationType < Base
    autoload TD::Types.camelize('new_message'), 'tdlib/types/notification_type/new_message'
    autoload TD::Types.camelize('new_secret_chat'), 'tdlib/types/notification_type/new_secret_chat'
    autoload TD::Types.camelize('new_call'), 'tdlib/types/notification_type/new_call'
    autoload TD::Types.camelize('new_push_message'), 'tdlib/types/notification_type/new_push_message'
  end
end
