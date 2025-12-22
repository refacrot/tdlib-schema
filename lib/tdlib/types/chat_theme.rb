module TD::Types
  # Describes a chat theme.
  class ChatTheme < Base
    autoload TD::Types.camelize('emoji'), 'tdlib/types/chat_theme/emoji'
    autoload TD::Types.camelize('gift'), 'tdlib/types/chat_theme/gift'
  end
end
