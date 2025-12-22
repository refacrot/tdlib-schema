module TD::Types
  # Describes the quality of a group call video.
  class GroupCallVideoQuality < Base
    autoload TD::Types.camelize('thumbnail'), 'tdlib/types/group_call_video_quality/thumbnail'
    autoload TD::Types.camelize('medium'), 'tdlib/types/group_call_video_quality/medium'
    autoload TD::Types.camelize('full'), 'tdlib/types/group_call_video_quality/full'
  end
end
