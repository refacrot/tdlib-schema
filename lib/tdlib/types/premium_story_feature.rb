module TD::Types
  # Describes a story feature available to Premium users.
  class PremiumStoryFeature < Base
    autoload TD::Types.camelize('priority_order'), 'tdlib/types/premium_story_feature/priority_order'
    autoload TD::Types.camelize('stealth_mode'), 'tdlib/types/premium_story_feature/stealth_mode'
    autoload TD::Types.camelize('permanent_views_history'), 'tdlib/types/premium_story_feature/permanent_views_history'
    autoload TD::Types.camelize('custom_expiration_duration'), 'tdlib/types/premium_story_feature/custom_expiration_duration'
    autoload TD::Types.camelize('save_stories'), 'tdlib/types/premium_story_feature/save_stories'
    autoload TD::Types.camelize('links_and_formatting'), 'tdlib/types/premium_story_feature/links_and_formatting'
    autoload TD::Types.camelize('video_quality'), 'tdlib/types/premium_story_feature/video_quality'
  end
end
