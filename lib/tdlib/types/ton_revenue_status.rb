module TD::Types
  # Contains information about Toncoins earned by the current user.
  #
  # @attr total_amount [Integer] Total amount of Toncoins earned; in the smallest units of the cryptocurrency.
  # @attr balance_amount [Integer] Amount of Toncoins that aren't withdrawn yet; in the smallest units of the
  #   cryptocurrency.
  # @attr available_amount [Integer] Amount of Toncoins that are available for withdrawal; in the smallest units of
  #   the cryptocurrency.
  # @attr withdrawal_enabled [Boolean] True, if Toncoins can be withdrawn.
  class TonRevenueStatus < Base
    attribute :total_amount, TD::Types::Coercible::Integer
    attribute :balance_amount, TD::Types::Coercible::Integer
    attribute :available_amount, TD::Types::Coercible::Integer
    attribute :withdrawal_enabled, TD::Types::Bool
  end
end
