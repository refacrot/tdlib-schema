module TD::Types
  # A detailed statistics about Toncoins earned by the current user.
  #
  # @attr revenue_by_day_graph [TD::Types::StatisticalGraph] A graph containing amount of revenue in a given day.
  # @attr status [TD::Types::TonRevenueStatus] Amount of earned revenue.
  # @attr usd_rate [Float] Current conversion rate of nanotoncoin to USD cents.
  class TonRevenueStatistics < Base
    attribute :revenue_by_day_graph, TD::Types::StatisticalGraph
    attribute :status, TD::Types::TonRevenueStatus
    attribute :usd_rate, TD::Types::Coercible::Float
  end
end
