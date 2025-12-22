module TD::Types
  # Describes result of group call participant invitation.
  class InviteGroupCallParticipantResult < Base
    autoload TD::Types.camelize('user_privacy_restricted'), 'tdlib/types/invite_group_call_participant_result/user_privacy_restricted'
    autoload TD::Types.camelize('user_already_participant'), 'tdlib/types/invite_group_call_participant_result/user_already_participant'
    autoload TD::Types.camelize('user_was_banned'), 'tdlib/types/invite_group_call_participant_result/user_was_banned'
    autoload TD::Types.camelize('success'), 'tdlib/types/invite_group_call_participant_result/success'
  end
end
