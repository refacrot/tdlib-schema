module TD::Types
  # Describes the type of URL linking to an internal Telegram entity.
  class TMeUrlType < Base
    autoload TD::Types.camelize('user'), 'tdlib/types/t_me_url_type/user'
    autoload TD::Types.camelize('supergroup'), 'tdlib/types/t_me_url_type/supergroup'
    autoload TD::Types.camelize('chat_invite'), 'tdlib/types/t_me_url_type/chat_invite'
    autoload TD::Types.camelize('sticker_set'), 'tdlib/types/t_me_url_type/sticker_set'
  end
end
