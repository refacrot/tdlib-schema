module TD::Types
  # Represents result of checking whether the current user can post a story on behalf of the specific chat.
  class CanPostStoryResult < Base
    autoload TD::Types.camelize('ok'), 'tdlib/types/can_post_story_result/ok'
    autoload TD::Types.camelize('premium_needed'), 'tdlib/types/can_post_story_result/premium_needed'
    autoload TD::Types.camelize('boost_needed'), 'tdlib/types/can_post_story_result/boost_needed'
    autoload TD::Types.camelize('active_story_limit_exceeded'), 'tdlib/types/can_post_story_result/active_story_limit_exceeded'
    autoload TD::Types.camelize('weekly_limit_exceeded'), 'tdlib/types/can_post_story_result/weekly_limit_exceeded'
    autoload TD::Types.camelize('monthly_limit_exceeded'), 'tdlib/types/can_post_story_result/monthly_limit_exceeded'
    autoload TD::Types.camelize('live_story_is_active'), 'tdlib/types/can_post_story_result/live_story_is_active'
  end
end
