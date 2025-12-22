module TD::Types
  # Describes actions which must be possible to do through a chat action bar.
  class ChatActionBar < Base
    autoload TD::Types.camelize('report_spam'), 'tdlib/types/chat_action_bar/report_spam'
    autoload TD::Types.camelize('invite_members'), 'tdlib/types/chat_action_bar/invite_members'
    autoload TD::Types.camelize('report_add_block'), 'tdlib/types/chat_action_bar/report_add_block'
    autoload TD::Types.camelize('add_contact'), 'tdlib/types/chat_action_bar/add_contact'
    autoload TD::Types.camelize('share_phone_number'), 'tdlib/types/chat_action_bar/share_phone_number'
    autoload TD::Types.camelize('join_request'), 'tdlib/types/chat_action_bar/join_request'
  end
end
