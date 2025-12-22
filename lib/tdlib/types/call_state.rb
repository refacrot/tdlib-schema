module TD::Types
  # Describes the current call state.
  class CallState < Base
    autoload TD::Types.camelize('pending'), 'tdlib/types/call_state/pending'
    autoload TD::Types.camelize('exchanging_keys'), 'tdlib/types/call_state/exchanging_keys'
    autoload TD::Types.camelize('ready'), 'tdlib/types/call_state/ready'
    autoload TD::Types.camelize('hanging_up'), 'tdlib/types/call_state/hanging_up'
    autoload TD::Types.camelize('discarded'), 'tdlib/types/call_state/discarded'
    autoload TD::Types.camelize('error'), 'tdlib/types/call_state/error'
  end
end
