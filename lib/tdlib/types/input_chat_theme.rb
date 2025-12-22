module TD::Types
  # Describes a chat theme to set.
  class InputChatTheme < Base
    autoload TD::Types.camelize('emoji'), 'tdlib/types/input_chat_theme/emoji'
    autoload TD::Types.camelize('gift'), 'tdlib/types/input_chat_theme/gift'
  end
end
