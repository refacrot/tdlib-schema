module TD::Types
  # Describes type of interaction with a story.
  class StoryInteractionType < Base
    autoload TD::Types.camelize('view'), 'tdlib/types/story_interaction_type/view'
    autoload TD::Types.camelize('forward'), 'tdlib/types/story_interaction_type/forward'
    autoload TD::Types.camelize('repost'), 'tdlib/types/story_interaction_type/repost'
  end
end
