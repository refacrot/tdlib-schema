module TD::Types
  # Describes the order of the found affiliate programs.
  class AffiliateProgramSortOrder < Base
    autoload TD::Types.camelize('profitability'), 'tdlib/types/affiliate_program_sort_order/profitability'
    autoload TD::Types.camelize('creation_date'), 'tdlib/types/affiliate_program_sort_order/creation_date'
    autoload TD::Types.camelize('revenue'), 'tdlib/types/affiliate_program_sort_order/revenue'
  end
end
