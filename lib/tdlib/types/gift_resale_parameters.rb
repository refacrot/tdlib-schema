module TD::Types
  # Describes parameters of a unique gift available for resale.
  #
  # @attr star_count [Integer] Resale price of the gift in Telegram Stars.
  # @attr toncoin_cent_count [Integer] Resale price of the gift in 1/100 of Toncoin.
  # @attr toncoin_only [Boolean] True, if the gift can be bought only using Toncoins.
  class GiftResaleParameters < Base
    attribute :star_count, TD::Types::Coercible::Integer
    attribute :toncoin_cent_count, TD::Types::Coercible::Integer
    attribute :toncoin_only, TD::Types::Bool
  end
end
