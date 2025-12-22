module TD::Types
  # Describes the reason why a call was discarded.
  class CallDiscardReason < Base
    autoload TD::Types.camelize('empty'), 'tdlib/types/call_discard_reason/empty'
    autoload TD::Types.camelize('missed'), 'tdlib/types/call_discard_reason/missed'
    autoload TD::Types.camelize('declined'), 'tdlib/types/call_discard_reason/declined'
    autoload TD::Types.camelize('disconnected'), 'tdlib/types/call_discard_reason/disconnected'
    autoload TD::Types.camelize('hung_up'), 'tdlib/types/call_discard_reason/hung_up'
    autoload TD::Types.camelize('upgrade_to_group_call'), 'tdlib/types/call_discard_reason/upgrade_to_group_call'
  end
end
