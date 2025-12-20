module TD::Types
  # The Toncoin revenue earned by the current user has changed.
  # If Toncoin transaction screen of the chat is opened, then getTonTransactions may be called to fetch new
  #   transactions.
  #
  # @attr status [TD::Types::TonRevenueStatus] New Toncoin revenue status.
  class Update::TonRevenueStatus < Update
    attribute :status, TD::Types::TonRevenueStatus
  end
end
