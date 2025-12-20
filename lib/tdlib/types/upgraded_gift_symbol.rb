module TD::Types
  # Describes a symbol shown on the pattern of an upgraded gift.
  #
  # @attr name [TD::Types::String] Name of the symbol.
  # @attr sticker [TD::Types::Sticker] The sticker representing the symbol.
  # @attr rarity_per_mille [Integer] The number of upgraded gifts that receive this symbol for each 1000 gifts
  #   upgraded.
  class UpgradedGiftSymbol < Base
    attribute :name, TD::Types::String
    attribute :sticker, TD::Types::Sticker
    attribute :rarity_per_mille, TD::Types::Coercible::Integer
  end
end
