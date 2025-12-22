module TD::Types
  # Describes a fill of a background.
  class BackgroundFill < Base
    autoload TD::Types.camelize('solid'), 'tdlib/types/background_fill/solid'
    autoload TD::Types.camelize('gradient'), 'tdlib/types/background_fill/gradient'
    autoload TD::Types.camelize('freeform_gradient'), 'tdlib/types/background_fill/freeform_gradient'
  end
end
