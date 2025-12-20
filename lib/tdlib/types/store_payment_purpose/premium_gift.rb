module TD::Types
  # The user gifting Telegram Premium to another user.
  #
  # @attr currency [TD::Types::String] ISO 4217 currency code of the payment currency.
  # @attr amount [Integer] Paid amount, in the smallest units of the currency.
  # @attr user_id [Integer] Identifiers of the user which will receive Telegram Premium.
  # @attr text [TD::Types::FormattedText] Text to show along with the gift codes; 0-getOption("gift_text_length_max")
  #   characters.
  #   Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed.
  class StorePaymentPurpose::PremiumGift < StorePaymentPurpose
    attribute :currency, TD::Types::String
    attribute :amount, TD::Types::Coercible::Integer
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :text, TD::Types::FormattedText
  end
end
