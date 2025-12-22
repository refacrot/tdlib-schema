module TD::Types
  # Describes the types of chats to which notification settings are relevant.
  class NotificationSettingsScope < Base
    autoload TD::Types.camelize('private_chats'), 'tdlib/types/notification_settings_scope/private_chats'
    autoload TD::Types.camelize('group_chats'), 'tdlib/types/notification_settings_scope/group_chats'
    autoload TD::Types.camelize('channel_chats'), 'tdlib/types/notification_settings_scope/channel_chats'
  end
end
