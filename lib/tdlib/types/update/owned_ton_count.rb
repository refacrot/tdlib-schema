module TD::Types
  # The number of Toncoins owned by the current user has changed.
  #
  # @attr ton_amount [Integer] The new amount of owned Toncoins; in the smallest units of the cryptocurrency.
  class Update::OwnedTonCount < Update
    attribute :ton_amount, TD::Types::Coercible::Integer
  end
end
