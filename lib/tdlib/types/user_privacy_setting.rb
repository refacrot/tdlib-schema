module TD::Types
  # Describes available user privacy settings.
  class UserPrivacySetting < Base
    autoload TD::Types.camelize('show_status'), 'tdlib/types/user_privacy_setting/show_status'
    autoload TD::Types.camelize('show_profile_photo'), 'tdlib/types/user_privacy_setting/show_profile_photo'
    autoload TD::Types.camelize('show_link_in_forwarded_messages'), 'tdlib/types/user_privacy_setting/show_link_in_forwarded_messages'
    autoload TD::Types.camelize('show_phone_number'), 'tdlib/types/user_privacy_setting/show_phone_number'
    autoload TD::Types.camelize('show_bio'), 'tdlib/types/user_privacy_setting/show_bio'
    autoload TD::Types.camelize('show_birthdate'), 'tdlib/types/user_privacy_setting/show_birthdate'
    autoload TD::Types.camelize('show_profile_audio'), 'tdlib/types/user_privacy_setting/show_profile_audio'
    autoload TD::Types.camelize('allow_chat_invites'), 'tdlib/types/user_privacy_setting/allow_chat_invites'
    autoload TD::Types.camelize('allow_calls'), 'tdlib/types/user_privacy_setting/allow_calls'
    autoload TD::Types.camelize('allow_peer_to_peer_calls'), 'tdlib/types/user_privacy_setting/allow_peer_to_peer_calls'
    autoload TD::Types.camelize('allow_finding_by_phone_number'), 'tdlib/types/user_privacy_setting/allow_finding_by_phone_number'
    autoload TD::Types.camelize('allow_private_voice_and_video_note_messages'), 'tdlib/types/user_privacy_setting/allow_private_voice_and_video_note_messages'
    autoload TD::Types.camelize('autosave_gifts'), 'tdlib/types/user_privacy_setting/autosave_gifts'
    autoload TD::Types.camelize('allow_unpaid_messages'), 'tdlib/types/user_privacy_setting/allow_unpaid_messages'
  end
end
