module TD::Types
  # Represents the type of network.
  class NetworkType < Base
    autoload TD::Types.camelize('none'), 'tdlib/types/network_type/none'
    autoload TD::Types.camelize('mobile'), 'tdlib/types/network_type/mobile'
    autoload TD::Types.camelize('mobile_roaming'), 'tdlib/types/network_type/mobile_roaming'
    autoload TD::Types.camelize('wi_fi'), 'tdlib/types/network_type/wi_fi'
    autoload TD::Types.camelize('other'), 'tdlib/types/network_type/other'
  end
end
