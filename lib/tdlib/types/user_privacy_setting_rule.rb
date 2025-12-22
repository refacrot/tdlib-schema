module TD::Types
  # Represents a single rule for managing user privacy settings.
  class UserPrivacySettingRule < Base
    autoload TD::Types.camelize('allow_all'), 'tdlib/types/user_privacy_setting_rule/allow_all'
    autoload TD::Types.camelize('allow_contacts'), 'tdlib/types/user_privacy_setting_rule/allow_contacts'
    autoload TD::Types.camelize('allow_bots'), 'tdlib/types/user_privacy_setting_rule/allow_bots'
    autoload TD::Types.camelize('allow_premium_users'), 'tdlib/types/user_privacy_setting_rule/allow_premium_users'
    autoload TD::Types.camelize('allow_users'), 'tdlib/types/user_privacy_setting_rule/allow_users'
    autoload TD::Types.camelize('allow_chat_members'), 'tdlib/types/user_privacy_setting_rule/allow_chat_members'
    autoload TD::Types.camelize('restrict_all'), 'tdlib/types/user_privacy_setting_rule/restrict_all'
    autoload TD::Types.camelize('restrict_contacts'), 'tdlib/types/user_privacy_setting_rule/restrict_contacts'
    autoload TD::Types.camelize('restrict_bots'), 'tdlib/types/user_privacy_setting_rule/restrict_bots'
    autoload TD::Types.camelize('restrict_users'), 'tdlib/types/user_privacy_setting_rule/restrict_users'
    autoload TD::Types.camelize('restrict_chat_members'), 'tdlib/types/user_privacy_setting_rule/restrict_chat_members'
  end
end
