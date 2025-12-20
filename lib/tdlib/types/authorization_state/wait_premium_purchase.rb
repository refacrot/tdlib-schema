module TD::Types
  # The user must buy Telegram Premium as an in-store purchase to log in.
  # Call checkAuthenticationPremiumPurchase and then setAuthenticationPremiumPurchaseTransaction.
  #
  # @attr store_product_id [TD::Types::String] Identifier of the store product that must be bought.
  # @attr support_email_address [TD::Types::String] Email address to use for support if the user has issues with
  #   Telegram Premium purchase.
  # @attr support_email_subject [TD::Types::String] Subject for the email sent to the support email address.
  class AuthorizationState::WaitPremiumPurchase < AuthorizationState
    attribute :store_product_id, TD::Types::String
    attribute :support_email_address, TD::Types::String
    attribute :support_email_subject, TD::Types::String
  end
end
