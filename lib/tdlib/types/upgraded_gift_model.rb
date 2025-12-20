module TD::Types
  # Describes a model of an upgraded gift.
  #
  # @attr name [TD::Types::String] Name of the model.
  # @attr sticker [TD::Types::Sticker] The sticker representing the upgraded gift.
  # @attr rarity_per_mille [Integer] The number of upgraded gifts that receive this model for each 1000 gifts upgraded.
  class UpgradedGiftModel < Base
    attribute :name, TD::Types::String
    attribute :sticker, TD::Types::Sticker
    attribute :rarity_per_mille, TD::Types::Coercible::Integer
  end
end
