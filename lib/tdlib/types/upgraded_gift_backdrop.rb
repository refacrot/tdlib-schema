module TD::Types
  # Describes a backdrop of an upgraded gift.
  #
  # @attr id [Integer] Unique identifier of the backdrop.
  # @attr name [TD::Types::String] Name of the backdrop.
  # @attr colors [TD::Types::UpgradedGiftBackdropColors] Colors of the backdrop.
  # @attr rarity_per_mille [Integer] The number of upgraded gifts that receive this backdrop for each 1000 gifts
  #   upgraded.
  class UpgradedGiftBackdrop < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :name, TD::Types::String
    attribute :colors, TD::Types::UpgradedGiftBackdropColors
    attribute :rarity_per_mille, TD::Types::Coercible::Integer
  end
end
