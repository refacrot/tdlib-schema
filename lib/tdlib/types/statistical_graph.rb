module TD::Types
  # Describes a statistical graph.
  class StatisticalGraph < Base
    autoload TD::Types.camelize('data'), 'tdlib/types/statistical_graph/data'
    autoload TD::Types.camelize('async'), 'tdlib/types/statistical_graph/async'
    autoload TD::Types.camelize('error'), 'tdlib/types/statistical_graph/error'
  end
end
