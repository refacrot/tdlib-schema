module TD::Types
  # Contains a detailed statistics about a chat.
  class ChatStatistics < Base
    autoload TD::Types.camelize('supergroup'), 'tdlib/types/chat_statistics/supergroup'
    autoload TD::Types.camelize('channel'), 'tdlib/types/chat_statistics/channel'
  end
end
