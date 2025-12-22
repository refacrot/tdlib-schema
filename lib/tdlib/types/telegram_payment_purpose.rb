module TD::Types
  # Describes a purpose of a payment toward Telegram.
  class TelegramPaymentPurpose < Base
    autoload TD::Types.camelize('premium_gift'), 'tdlib/types/telegram_payment_purpose/premium_gift'
    autoload TD::Types.camelize('premium_gift_codes'), 'tdlib/types/telegram_payment_purpose/premium_gift_codes'
    autoload TD::Types.camelize('premium_giveaway'), 'tdlib/types/telegram_payment_purpose/premium_giveaway'
    autoload TD::Types.camelize('stars'), 'tdlib/types/telegram_payment_purpose/stars'
    autoload TD::Types.camelize('gifted_stars'), 'tdlib/types/telegram_payment_purpose/gifted_stars'
    autoload TD::Types.camelize('star_giveaway'), 'tdlib/types/telegram_payment_purpose/star_giveaway'
    autoload TD::Types.camelize('join_chat'), 'tdlib/types/telegram_payment_purpose/join_chat'
  end
end
