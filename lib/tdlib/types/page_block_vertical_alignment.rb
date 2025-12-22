module TD::Types
  # Describes a Vertical alignment of a table cell content.
  class PageBlockVerticalAlignment < Base
    autoload TD::Types.camelize('top'), 'tdlib/types/page_block_vertical_alignment/top'
    autoload TD::Types.camelize('middle'), 'tdlib/types/page_block_vertical_alignment/middle'
    autoload TD::Types.camelize('bottom'), 'tdlib/types/page_block_vertical_alignment/bottom'
  end
end
