module TD::Types
  # Describes scope of autosave settings.
  class AutosaveSettingsScope < Base
    autoload TD::Types.camelize('private_chats'), 'tdlib/types/autosave_settings_scope/private_chats'
    autoload TD::Types.camelize('group_chats'), 'tdlib/types/autosave_settings_scope/group_chats'
    autoload TD::Types.camelize('channel_chats'), 'tdlib/types/autosave_settings_scope/channel_chats'
    autoload TD::Types.camelize('chat'), 'tdlib/types/autosave_settings_scope/chat'
  end
end
