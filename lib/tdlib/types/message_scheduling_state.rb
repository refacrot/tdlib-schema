module TD::Types
  # Contains information about the time when a scheduled message will be sent.
  class MessageSchedulingState < Base
    autoload TD::Types.camelize('send_at_date'), 'tdlib/types/message_scheduling_state/send_at_date'
    autoload TD::Types.camelize('send_when_online'), 'tdlib/types/message_scheduling_state/send_when_online'
    autoload TD::Types.camelize('send_when_video_processed'), 'tdlib/types/message_scheduling_state/send_when_video_processed'
  end
end
