module TD::Types
  # The content of a story to post.
  class InputStoryContent < Base
    autoload TD::Types.camelize('photo'), 'tdlib/types/input_story_content/photo'
    autoload TD::Types.camelize('video'), 'tdlib/types/input_story_content/video'
  end
end
