module TD::Types
  # Describes the type of proxy server.
  class ProxyType < Base
    autoload TD::Types.camelize('socks5'), 'tdlib/types/proxy_type/socks5'
    autoload TD::Types.camelize('http'), 'tdlib/types/proxy_type/http'
    autoload TD::Types.camelize('mtproto'), 'tdlib/types/proxy_type/mtproto'
  end
end
