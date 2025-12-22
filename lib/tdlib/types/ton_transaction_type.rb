module TD::Types
  # Describes type of transaction with Toncoins.
  class TonTransactionType < Base
    autoload TD::Types.camelize('fragment_deposit'), 'tdlib/types/ton_transaction_type/fragment_deposit'
    autoload TD::Types.camelize('fragment_withdrawal'), 'tdlib/types/ton_transaction_type/fragment_withdrawal'
    autoload TD::Types.camelize('suggested_post_payment'), 'tdlib/types/ton_transaction_type/suggested_post_payment'
    autoload TD::Types.camelize('gift_purchase_offer'), 'tdlib/types/ton_transaction_type/gift_purchase_offer'
    autoload TD::Types.camelize('upgraded_gift_purchase'), 'tdlib/types/ton_transaction_type/upgraded_gift_purchase'
    autoload TD::Types.camelize('upgraded_gift_sale'), 'tdlib/types/ton_transaction_type/upgraded_gift_sale'
    autoload TD::Types.camelize('unsupported'), 'tdlib/types/ton_transaction_type/unsupported'
  end
end
