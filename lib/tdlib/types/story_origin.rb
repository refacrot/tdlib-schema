module TD::Types
  # Contains information about the origin of a story that was reposted.
  class StoryOrigin < Base
    autoload TD::Types.camelize('public_story'), 'tdlib/types/story_origin/public_story'
    autoload TD::Types.camelize('hidden_user'), 'tdlib/types/story_origin/hidden_user'
  end
end
