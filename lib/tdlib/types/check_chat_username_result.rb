module TD::Types
  # Represents result of checking whether a username can be set for a chat.
  class CheckChatUsernameResult < Base
    autoload TD::Types.camelize('ok'), 'tdlib/types/check_chat_username_result/ok'
    autoload TD::Types.camelize('username_invalid'), 'tdlib/types/check_chat_username_result/username_invalid'
    autoload TD::Types.camelize('username_occupied'), 'tdlib/types/check_chat_username_result/username_occupied'
    autoload TD::Types.camelize('username_purchasable'), 'tdlib/types/check_chat_username_result/username_purchasable'
    autoload TD::Types.camelize('public_chats_too_many'), 'tdlib/types/check_chat_username_result/public_chats_too_many'
    autoload TD::Types.camelize('public_groups_unavailable'), 'tdlib/types/check_chat_username_result/public_groups_unavailable'
  end
end
