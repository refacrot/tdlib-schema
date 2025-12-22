module TD::Types
  # Provides information about the status of a member in a chat.
  class ChatMemberStatus < Base
    autoload TD::Types.camelize('creator'), 'tdlib/types/chat_member_status/creator'
    autoload TD::Types.camelize('administrator'), 'tdlib/types/chat_member_status/administrator'
    autoload TD::Types.camelize('member'), 'tdlib/types/chat_member_status/member'
    autoload TD::Types.camelize('restricted'), 'tdlib/types/chat_member_status/restricted'
    autoload TD::Types.camelize('left'), 'tdlib/types/chat_member_status/left'
    autoload TD::Types.camelize('banned'), 'tdlib/types/chat_member_status/banned'
  end
end
