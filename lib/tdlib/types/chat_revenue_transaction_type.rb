module TD::Types
  # Describes type of transaction for revenue earned from sponsored messages in a chat.
  class ChatRevenueTransactionType < Base
    autoload TD::Types.camelize('unsupported'), 'tdlib/types/chat_revenue_transaction_type/unsupported'
    autoload TD::Types.camelize('sponsored_message_earnings'), 'tdlib/types/chat_revenue_transaction_type/sponsored_message_earnings'
    autoload TD::Types.camelize('suggested_post_earnings'), 'tdlib/types/chat_revenue_transaction_type/suggested_post_earnings'
    autoload TD::Types.camelize('fragment_withdrawal'), 'tdlib/types/chat_revenue_transaction_type/fragment_withdrawal'
    autoload TD::Types.camelize('fragment_refund'), 'tdlib/types/chat_revenue_transaction_type/fragment_refund'
  end
end
