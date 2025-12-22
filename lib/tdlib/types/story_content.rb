module TD::Types
  # Contains the content of a story.
  class StoryContent < Base
    autoload TD::Types.camelize('photo'), 'tdlib/types/story_content/photo'
    autoload TD::Types.camelize('video'), 'tdlib/types/story_content/video'
    autoload TD::Types.camelize('live'), 'tdlib/types/story_content/live'
    autoload TD::Types.camelize('unsupported'), 'tdlib/types/story_content/unsupported'
  end
end
