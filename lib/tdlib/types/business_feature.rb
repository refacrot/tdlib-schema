module TD::Types
  # Describes a feature available to Business user accounts.
  class BusinessFeature < Base
    autoload TD::Types.camelize('location'), 'tdlib/types/business_feature/location'
    autoload TD::Types.camelize('opening_hours'), 'tdlib/types/business_feature/opening_hours'
    autoload TD::Types.camelize('quick_replies'), 'tdlib/types/business_feature/quick_replies'
    autoload TD::Types.camelize('greeting_message'), 'tdlib/types/business_feature/greeting_message'
    autoload TD::Types.camelize('away_message'), 'tdlib/types/business_feature/away_message'
    autoload TD::Types.camelize('account_links'), 'tdlib/types/business_feature/account_links'
    autoload TD::Types.camelize('start_page'), 'tdlib/types/business_feature/start_page'
    autoload TD::Types.camelize('bots'), 'tdlib/types/business_feature/bots'
    autoload TD::Types.camelize('emoji_status'), 'tdlib/types/business_feature/emoji_status'
    autoload TD::Types.camelize('chat_folder_tags'), 'tdlib/types/business_feature/chat_folder_tags'
    autoload TD::Types.camelize('upgraded_stories'), 'tdlib/types/business_feature/upgraded_stories'
  end
end
