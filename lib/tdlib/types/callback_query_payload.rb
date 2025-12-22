module TD::Types
  # Represents a payload of a callback query.
  class CallbackQueryPayload < Base
    autoload TD::Types.camelize('data'), 'tdlib/types/callback_query_payload/data'
    autoload TD::Types.camelize('data_with_password'), 'tdlib/types/callback_query_payload/data_with_password'
    autoload TD::Types.camelize('game'), 'tdlib/types/callback_query_payload/game'
  end
end
