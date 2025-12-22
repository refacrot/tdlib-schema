module TD::Types
  # Describes the reason why a code needs to be re-sent.
  class ResendCodeReason < Base
    autoload TD::Types.camelize('user_request'), 'tdlib/types/resend_code_reason/user_request'
    autoload TD::Types.camelize('verification_failed'), 'tdlib/types/resend_code_reason/verification_failed'
  end
end
