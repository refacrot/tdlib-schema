module TD::Types
  # Describes a horizontal alignment of a table cell content.
  class PageBlockHorizontalAlignment < Base
    autoload TD::Types.camelize('left'), 'tdlib/types/page_block_horizontal_alignment/left'
    autoload TD::Types.camelize('center'), 'tdlib/types/page_block_horizontal_alignment/center'
    autoload TD::Types.camelize('right'), 'tdlib/types/page_block_horizontal_alignment/right'
  end
end
