module TD::Types
  # Describes the type of call server.
  class CallServerType < Base
    autoload TD::Types.camelize('telegram_reflector'), 'tdlib/types/call_server_type/telegram_reflector'
    autoload TD::Types.camelize('webrtc'), 'tdlib/types/call_server_type/webrtc'
  end
end
