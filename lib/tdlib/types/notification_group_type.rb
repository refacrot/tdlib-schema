module TD::Types
  # Describes the type of notifications in a notification group.
  class NotificationGroupType < Base
    autoload TD::Types.camelize('messages'), 'tdlib/types/notification_group_type/messages'
    autoload TD::Types.camelize('mentions'), 'tdlib/types/notification_group_type/mentions'
    autoload TD::Types.camelize('secret_chat'), 'tdlib/types/notification_group_type/secret_chat'
    autoload TD::Types.camelize('calls'), 'tdlib/types/notification_group_type/calls'
  end
end
