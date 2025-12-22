module TD::Types
  # Represents result of checking whether the current session can be used to transfer a chat ownership to another
  #   user.
  class CanTransferOwnershipResult < Base
    autoload TD::Types.camelize('ok'), 'tdlib/types/can_transfer_ownership_result/ok'
    autoload TD::Types.camelize('password_needed'), 'tdlib/types/can_transfer_ownership_result/password_needed'
    autoload TD::Types.camelize('password_too_fresh'), 'tdlib/types/can_transfer_ownership_result/password_too_fresh'
    autoload TD::Types.camelize('session_too_fresh'), 'tdlib/types/can_transfer_ownership_result/session_too_fresh'
  end
end
