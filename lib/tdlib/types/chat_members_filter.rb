module TD::Types
  # Specifies the kind of chat members to return in searchChatMembers.
  class ChatMembersFilter < Base
    autoload TD::Types.camelize('contacts'), 'tdlib/types/chat_members_filter/contacts'
    autoload TD::Types.camelize('administrators'), 'tdlib/types/chat_members_filter/administrators'
    autoload TD::Types.camelize('members'), 'tdlib/types/chat_members_filter/members'
    autoload TD::Types.camelize('mention'), 'tdlib/types/chat_members_filter/mention'
    autoload TD::Types.camelize('restricted'), 'tdlib/types/chat_members_filter/restricted'
    autoload TD::Types.camelize('banned'), 'tdlib/types/chat_members_filter/banned'
    autoload TD::Types.camelize('bots'), 'tdlib/types/chat_members_filter/bots'
  end
end
