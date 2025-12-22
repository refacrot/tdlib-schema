module TD::Types
  # Describes the type of background.
  class BackgroundType < Base
    autoload TD::Types.camelize('wallpaper'), 'tdlib/types/background_type/wallpaper'
    autoload TD::Types.camelize('pattern'), 'tdlib/types/background_type/pattern'
    autoload TD::Types.camelize('fill'), 'tdlib/types/background_type/fill'
    autoload TD::Types.camelize('chat_theme'), 'tdlib/types/background_type/chat_theme'
  end
end
