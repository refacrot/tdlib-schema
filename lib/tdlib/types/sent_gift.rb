module TD::Types
  # Represents content of a gift received by a user or a channel chat.
  class SentGift < Base
    autoload TD::Types.camelize('regular'), 'tdlib/types/sent_gift/regular'
    autoload TD::Types.camelize('upgraded'), 'tdlib/types/sent_gift/upgraded'
  end
end
