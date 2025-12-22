module TD::Types
  # Describes data channel for a group call.
  class GroupCallDataChannel < Base
    autoload TD::Types.camelize('main'), 'tdlib/types/group_call_data_channel/main'
    autoload TD::Types.camelize('screen_sharing'), 'tdlib/types/group_call_data_channel/screen_sharing'
  end
end
