module TD::Types
  # Describes source of a chat boost.
  class ChatBoostSource < Base
    autoload TD::Types.camelize('gift_code'), 'tdlib/types/chat_boost_source/gift_code'
    autoload TD::Types.camelize('giveaway'), 'tdlib/types/chat_boost_source/giveaway'
    autoload TD::Types.camelize('premium'), 'tdlib/types/chat_boost_source/premium'
  end
end
