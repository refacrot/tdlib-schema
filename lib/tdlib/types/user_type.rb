module TD::Types
  # Represents the type of user.
  #   The following types are possible: regular users, deleted users and bots.
  class UserType < Base
    autoload TD::Types.camelize('regular'), 'tdlib/types/user_type/regular'
    autoload TD::Types.camelize('deleted'), 'tdlib/types/user_type/deleted'
    autoload TD::Types.camelize('bot'), 'tdlib/types/user_type/bot'
    autoload TD::Types.camelize('unknown'), 'tdlib/types/user_type/unknown'
  end
end
