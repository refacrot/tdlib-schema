module TD::Types
  # Describes the last time the user was online.
  class UserStatus < Base
    autoload TD::Types.camelize('empty'), 'tdlib/types/user_status/empty'
    autoload TD::Types.camelize('online'), 'tdlib/types/user_status/online'
    autoload TD::Types.camelize('offline'), 'tdlib/types/user_status/offline'
    autoload TD::Types.camelize('recently'), 'tdlib/types/user_status/recently'
    autoload TD::Types.camelize('last_week'), 'tdlib/types/user_status/last_week'
    autoload TD::Types.camelize('last_month'), 'tdlib/types/user_status/last_month'
  end
end
