module TD::Types
  # Describes state of a revenue withdrawal.
  class RevenueWithdrawalState < Base
    autoload TD::Types.camelize('pending'), 'tdlib/types/revenue_withdrawal_state/pending'
    autoload TD::Types.camelize('succeeded'), 'tdlib/types/revenue_withdrawal_state/succeeded'
    autoload TD::Types.camelize('failed'), 'tdlib/types/revenue_withdrawal_state/failed'
  end
end
