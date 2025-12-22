module TD::Types
  # Describes privacy settings of a story.
  class StoryPrivacySettings < Base
    autoload TD::Types.camelize('everyone'), 'tdlib/types/story_privacy_settings/everyone'
    autoload TD::Types.camelize('contacts'), 'tdlib/types/story_privacy_settings/contacts'
    autoload TD::Types.camelize('close_friends'), 'tdlib/types/story_privacy_settings/close_friends'
    autoload TD::Types.camelize('selected_users'), 'tdlib/types/story_privacy_settings/selected_users'
  end
end
