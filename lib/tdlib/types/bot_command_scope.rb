module TD::Types
  # Represents the scope to which bot commands are relevant.
  class BotCommandScope < Base
    autoload TD::Types.camelize('default'), 'tdlib/types/bot_command_scope/default'
    autoload TD::Types.camelize('all_private_chats'), 'tdlib/types/bot_command_scope/all_private_chats'
    autoload TD::Types.camelize('all_group_chats'), 'tdlib/types/bot_command_scope/all_group_chats'
    autoload TD::Types.camelize('all_chat_administrators'), 'tdlib/types/bot_command_scope/all_chat_administrators'
    autoload TD::Types.camelize('chat'), 'tdlib/types/bot_command_scope/chat'
    autoload TD::Types.camelize('chat_administrators'), 'tdlib/types/bot_command_scope/chat_administrators'
    autoload TD::Types.camelize('chat_member'), 'tdlib/types/bot_command_scope/chat_member'
  end
end
