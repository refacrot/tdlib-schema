module TD::Types
  # Describes a list of stories.
  class StoryList < Base
    autoload TD::Types.camelize('main'), 'tdlib/types/story_list/main'
    autoload TD::Types.camelize('archive'), 'tdlib/types/story_list/archive'
  end
end
