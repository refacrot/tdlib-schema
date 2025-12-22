module TD::Types
  # Represents result of 2-step verification password reset.
  class ResetPasswordResult < Base
    autoload TD::Types.camelize('ok'), 'tdlib/types/reset_password_result/ok'
    autoload TD::Types.camelize('pending'), 'tdlib/types/reset_password_result/pending'
    autoload TD::Types.camelize('declined'), 'tdlib/types/reset_password_result/declined'
  end
end
