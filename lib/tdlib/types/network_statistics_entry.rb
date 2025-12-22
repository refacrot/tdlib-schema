module TD::Types
  # Contains statistics about network usage.
  class NetworkStatisticsEntry < Base
    autoload TD::Types.camelize('file'), 'tdlib/types/network_statistics_entry/file'
    autoload TD::Types.camelize('call'), 'tdlib/types/network_statistics_entry/call'
  end
end
