module TD::Types
  # Describes reason for refund of the payment for a suggested post.
  class SuggestedPostRefundReason < Base
    autoload TD::Types.camelize('post_deleted'), 'tdlib/types/suggested_post_refund_reason/post_deleted'
    autoload TD::Types.camelize('payment_refunded'), 'tdlib/types/suggested_post_refund_reason/payment_refunded'
  end
end
