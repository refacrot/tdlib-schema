module TD::Types
  # Describes type of block list.
  class BlockList < Base
    autoload TD::Types.camelize('main'), 'tdlib/types/block_list/main'
    autoload TD::Types.camelize('stories'), 'tdlib/types/block_list/stories'
  end
end
