module TD::Types
  # Describes state of active stories posted by a chat.
  class ActiveStoryState < Base
    autoload TD::Types.camelize('live'), 'tdlib/types/active_story_state/live'
    autoload TD::Types.camelize('unread'), 'tdlib/types/active_story_state/unread'
    autoload TD::Types.camelize('read'), 'tdlib/types/active_story_state/read'
  end
end
