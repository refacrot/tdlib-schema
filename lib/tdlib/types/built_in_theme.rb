module TD::Types
  # Describes a built-in theme of an official app.
  class BuiltInTheme < Base
    autoload TD::Types.camelize('classic'), 'tdlib/types/built_in_theme/classic'
    autoload TD::Types.camelize('day'), 'tdlib/types/built_in_theme/day'
    autoload TD::Types.camelize('night'), 'tdlib/types/built_in_theme/night'
    autoload TD::Types.camelize('tinted'), 'tdlib/types/built_in_theme/tinted'
    autoload TD::Types.camelize('arctic'), 'tdlib/types/built_in_theme/arctic'
  end
end
