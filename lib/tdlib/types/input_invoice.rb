module TD::Types
  # Describes an invoice to process.
  class InputInvoice < Base
    autoload TD::Types.camelize('message'), 'tdlib/types/input_invoice/message'
    autoload TD::Types.camelize('name'), 'tdlib/types/input_invoice/name'
    autoload TD::Types.camelize('telegram'), 'tdlib/types/input_invoice/telegram'
  end
end
