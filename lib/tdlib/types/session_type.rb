module TD::Types
  # Represents the type of session.
  class SessionType < Base
    autoload TD::Types.camelize('android'), 'tdlib/types/session_type/android'
    autoload TD::Types.camelize('apple'), 'tdlib/types/session_type/apple'
    autoload TD::Types.camelize('brave'), 'tdlib/types/session_type/brave'
    autoload TD::Types.camelize('chrome'), 'tdlib/types/session_type/chrome'
    autoload TD::Types.camelize('edge'), 'tdlib/types/session_type/edge'
    autoload TD::Types.camelize('firefox'), 'tdlib/types/session_type/firefox'
    autoload TD::Types.camelize('ipad'), 'tdlib/types/session_type/ipad'
    autoload TD::Types.camelize('iphone'), 'tdlib/types/session_type/iphone'
    autoload TD::Types.camelize('linux'), 'tdlib/types/session_type/linux'
    autoload TD::Types.camelize('mac'), 'tdlib/types/session_type/mac'
    autoload TD::Types.camelize('opera'), 'tdlib/types/session_type/opera'
    autoload TD::Types.camelize('safari'), 'tdlib/types/session_type/safari'
    autoload TD::Types.camelize('ubuntu'), 'tdlib/types/session_type/ubuntu'
    autoload TD::Types.camelize('unknown'), 'tdlib/types/session_type/unknown'
    autoload TD::Types.camelize('vivaldi'), 'tdlib/types/session_type/vivaldi'
    autoload TD::Types.camelize('windows'), 'tdlib/types/session_type/windows'
    autoload TD::Types.camelize('xbox'), 'tdlib/types/session_type/xbox'
  end
end
