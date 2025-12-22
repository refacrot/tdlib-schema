module TD::Types
  # Describes an action suggested to the current user.
  class SuggestedAction < Base
    autoload TD::Types.camelize('enable_archive_and_mute_new_chats'), 'tdlib/types/suggested_action/enable_archive_and_mute_new_chats'
    autoload TD::Types.camelize('check_password'), 'tdlib/types/suggested_action/check_password'
    autoload TD::Types.camelize('check_phone_number'), 'tdlib/types/suggested_action/check_phone_number'
    autoload TD::Types.camelize('view_checks_hint'), 'tdlib/types/suggested_action/view_checks_hint'
    autoload TD::Types.camelize('convert_to_broadcast_group'), 'tdlib/types/suggested_action/convert_to_broadcast_group'
    autoload TD::Types.camelize('set_password'), 'tdlib/types/suggested_action/set_password'
    autoload TD::Types.camelize('upgrade_premium'), 'tdlib/types/suggested_action/upgrade_premium'
    autoload TD::Types.camelize('restore_premium'), 'tdlib/types/suggested_action/restore_premium'
    autoload TD::Types.camelize('subscribe_to_annual_premium'), 'tdlib/types/suggested_action/subscribe_to_annual_premium'
    autoload TD::Types.camelize('gift_premium_for_christmas'), 'tdlib/types/suggested_action/gift_premium_for_christmas'
    autoload TD::Types.camelize('set_birthdate'), 'tdlib/types/suggested_action/set_birthdate'
    autoload TD::Types.camelize('set_profile_photo'), 'tdlib/types/suggested_action/set_profile_photo'
    autoload TD::Types.camelize('extend_premium'), 'tdlib/types/suggested_action/extend_premium'
    autoload TD::Types.camelize('extend_star_subscriptions'), 'tdlib/types/suggested_action/extend_star_subscriptions'
    autoload TD::Types.camelize('custom'), 'tdlib/types/suggested_action/custom'
    autoload TD::Types.camelize('set_login_email_address'), 'tdlib/types/suggested_action/set_login_email_address'
    autoload TD::Types.camelize('add_login_passkey'), 'tdlib/types/suggested_action/add_login_passkey'
  end
end
