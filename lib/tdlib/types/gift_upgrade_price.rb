module TD::Types
  # Describes a price required to pay to upgrade a gift.
  #
  # @attr date [Integer] Point in time (Unix timestamp) when the price will be in effect.
  # @attr star_count [Integer] The amount of Telegram Stars required to pay to upgrade the gift.
  class GiftUpgradePrice < Base
    attribute :date, TD::Types::Coercible::Integer
    attribute :star_count, TD::Types::Coercible::Integer
  end
end
