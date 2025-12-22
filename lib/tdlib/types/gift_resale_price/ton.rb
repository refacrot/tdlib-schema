module TD::Types
  # Describes price of a resold gift in Toncoins.
  #
  # @attr toncoin_cent_count [Integer] The amount of 1/100 of Toncoin expected to be paid for the gift.
  #   Must be in range
  #   getOption("gift_resale_toncoin_cent_count_min")-getOption("gift_resale_toncoin_cent_count_max").
  class GiftResalePrice::Ton < GiftResalePrice
    attribute :toncoin_cent_count, TD::Types::Coercible::Integer
  end
end
