module TD::Types
  # Describes whether a gift can be sent now by the current user.
  class CanSendGiftResult < Base
    autoload TD::Types.camelize('ok'), 'tdlib/types/can_send_gift_result/ok'
    autoload TD::Types.camelize('fail'), 'tdlib/types/can_send_gift_result/fail'
  end
end
