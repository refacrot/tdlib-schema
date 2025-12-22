module TD::Types
  # Describes type of subscription paid in Telegram Stars.
  class StarSubscriptionType < Base
    autoload TD::Types.camelize('channel'), 'tdlib/types/star_subscription_type/channel'
    autoload TD::Types.camelize('bot'), 'tdlib/types/star_subscription_type/bot'
  end
end
