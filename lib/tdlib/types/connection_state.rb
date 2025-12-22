module TD::Types
  # Describes the current state of the connection to Telegram servers.
  class ConnectionState < Base
    autoload TD::Types.camelize('waiting_for_network'), 'tdlib/types/connection_state/waiting_for_network'
    autoload TD::Types.camelize('connecting_to_proxy'), 'tdlib/types/connection_state/connecting_to_proxy'
    autoload TD::Types.camelize('connecting'), 'tdlib/types/connection_state/connecting'
    autoload TD::Types.camelize('updating'), 'tdlib/types/connection_state/updating'
    autoload TD::Types.camelize('ready'), 'tdlib/types/connection_state/ready'
  end
end
