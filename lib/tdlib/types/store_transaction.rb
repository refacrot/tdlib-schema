module TD::Types
  # Describes an in-store transaction.
  class StoreTransaction < Base
    autoload TD::Types.camelize('app_store'), 'tdlib/types/store_transaction/app_store'
    autoload TD::Types.camelize('google_play'), 'tdlib/types/store_transaction/google_play'
  end
end
