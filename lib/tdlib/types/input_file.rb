module TD::Types
  # Points to a file.
  class InputFile < Base
    autoload TD::Types.camelize('id'), 'tdlib/types/input_file/id'
    autoload TD::Types.camelize('remote'), 'tdlib/types/input_file/remote'
    autoload TD::Types.camelize('local'), 'tdlib/types/input_file/local'
    autoload TD::Types.camelize('generated'), 'tdlib/types/input_file/generated'
  end
end
