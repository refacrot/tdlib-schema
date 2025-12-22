module TD::Types
  # Describes the current secret chat state.
  class SecretChatState < Base
    autoload TD::Types.camelize('pending'), 'tdlib/types/secret_chat_state/pending'
    autoload TD::Types.camelize('ready'), 'tdlib/types/secret_chat_state/ready'
    autoload TD::Types.camelize('closed'), 'tdlib/types/secret_chat_state/closed'
  end
end
