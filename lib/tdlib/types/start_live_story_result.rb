module TD::Types
  # Represents result of starting a live story.
  class StartLiveStoryResult < Base
    autoload TD::Types.camelize('ok'), 'tdlib/types/start_live_story_result/ok'
    autoload TD::Types.camelize('fail'), 'tdlib/types/start_live_story_result/fail'
  end
end
