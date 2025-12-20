module TD::Types
  # Describes price of a suggested post in Toncoins.
  #
  # @attr toncoin_cent_count [Integer] The amount of 1/100 of Toncoin expected to be paid for the post;
  #   getOption("suggested_post_toncoin_cent_count_min")-getOption("suggested_post_toncoin_cent_count_max").
  class SuggestedPostPrice::Ton < SuggestedPostPrice
    attribute :toncoin_cent_count, TD::Types::Coercible::Integer
  end
end
