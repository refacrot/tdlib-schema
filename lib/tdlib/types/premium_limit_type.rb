module TD::Types
  # Describes type of limit, increased for Premium users.
  class PremiumLimitType < Base
    autoload TD::Types.camelize('supergroup_count'), 'tdlib/types/premium_limit_type/supergroup_count'
    autoload TD::Types.camelize('pinned_chat_count'), 'tdlib/types/premium_limit_type/pinned_chat_count'
    autoload TD::Types.camelize('created_public_chat_count'), 'tdlib/types/premium_limit_type/created_public_chat_count'
    autoload TD::Types.camelize('saved_animation_count'), 'tdlib/types/premium_limit_type/saved_animation_count'
    autoload TD::Types.camelize('favorite_sticker_count'), 'tdlib/types/premium_limit_type/favorite_sticker_count'
    autoload TD::Types.camelize('chat_folder_count'), 'tdlib/types/premium_limit_type/chat_folder_count'
    autoload TD::Types.camelize('chat_folder_chosen_chat_count'), 'tdlib/types/premium_limit_type/chat_folder_chosen_chat_count'
    autoload TD::Types.camelize('pinned_archived_chat_count'), 'tdlib/types/premium_limit_type/pinned_archived_chat_count'
    autoload TD::Types.camelize('pinned_saved_messages_topic_count'), 'tdlib/types/premium_limit_type/pinned_saved_messages_topic_count'
    autoload TD::Types.camelize('caption_length'), 'tdlib/types/premium_limit_type/caption_length'
    autoload TD::Types.camelize('bio_length'), 'tdlib/types/premium_limit_type/bio_length'
    autoload TD::Types.camelize('chat_folder_invite_link_count'), 'tdlib/types/premium_limit_type/chat_folder_invite_link_count'
    autoload TD::Types.camelize('shareable_chat_folder_count'), 'tdlib/types/premium_limit_type/shareable_chat_folder_count'
    autoload TD::Types.camelize('active_story_count'), 'tdlib/types/premium_limit_type/active_story_count'
    autoload TD::Types.camelize('weekly_posted_story_count'), 'tdlib/types/premium_limit_type/weekly_posted_story_count'
    autoload TD::Types.camelize('monthly_posted_story_count'), 'tdlib/types/premium_limit_type/monthly_posted_story_count'
    autoload TD::Types.camelize('story_caption_length'), 'tdlib/types/premium_limit_type/story_caption_length'
    autoload TD::Types.camelize('story_suggested_reaction_area_count'), 'tdlib/types/premium_limit_type/story_suggested_reaction_area_count'
    autoload TD::Types.camelize('similar_chat_count'), 'tdlib/types/premium_limit_type/similar_chat_count'
  end
end
