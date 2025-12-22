module TD::Types
  # Describes direction of transactions in a transaction list.
  class TransactionDirection < Base
    autoload TD::Types.camelize('incoming'), 'tdlib/types/transaction_direction/incoming'
    autoload TD::Types.camelize('outgoing'), 'tdlib/types/transaction_direction/outgoing'
  end
end
