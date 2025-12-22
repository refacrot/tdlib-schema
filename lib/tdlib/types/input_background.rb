module TD::Types
  # Contains information about background to set.
  class InputBackground < Base
    autoload TD::Types.camelize('local'), 'tdlib/types/input_background/local'
    autoload TD::Types.camelize('remote'), 'tdlib/types/input_background/remote'
    autoload TD::Types.camelize('previous'), 'tdlib/types/input_background/previous'
  end
end
