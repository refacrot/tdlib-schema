module TD::Types
  # Describes the type of chat.
  class ChatType < Base
    autoload TD::Types.camelize('private'), 'tdlib/types/chat_type/private'
    autoload TD::Types.camelize('basic_group'), 'tdlib/types/chat_type/basic_group'
    autoload TD::Types.camelize('supergroup'), 'tdlib/types/chat_type/supergroup'
    autoload TD::Types.camelize('secret'), 'tdlib/types/chat_type/secret'
  end
end
