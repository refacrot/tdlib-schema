module TD::Types
  # Represents a list of Toncoin transactions.
  #
  # @attr ton_amount [Integer] The total amount of owned Toncoins.
  # @attr transactions [Array<TD::Types::TonTransaction>] List of Toncoin transactions.
  # @attr next_offset [TD::Types::String] The offset for the next request.
  #   If empty, then there are no more results.
  class TonTransactions < Base
    attribute :ton_amount, TD::Types::Coercible::Integer
    attribute :transactions, TD::Types::Array.of(TD::Types::TonTransaction)
    attribute :next_offset, TD::Types::String
  end
end
