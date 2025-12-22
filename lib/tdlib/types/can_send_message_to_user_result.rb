module TD::Types
  # Describes result of canSendMessageToUser.
  class CanSendMessageToUserResult < Base
    autoload TD::Types.camelize('ok'), 'tdlib/types/can_send_message_to_user_result/ok'
    autoload TD::Types.camelize('user_has_paid_messages'), 'tdlib/types/can_send_message_to_user_result/user_has_paid_messages'
    autoload TD::Types.camelize('user_is_deleted'), 'tdlib/types/can_send_message_to_user_result/user_is_deleted'
    autoload TD::Types.camelize('user_restricts_new_chats'), 'tdlib/types/can_send_message_to_user_result/user_restricts_new_chats'
  end
end
