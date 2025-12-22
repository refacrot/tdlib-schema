module TD::Types
  # Describes the type of chat to which points an invite link.
  class InviteLinkChatType < Base
    autoload TD::Types.camelize('basic_group'), 'tdlib/types/invite_link_chat_type/basic_group'
    autoload TD::Types.camelize('supergroup'), 'tdlib/types/invite_link_chat_type/supergroup'
    autoload TD::Types.camelize('channel'), 'tdlib/types/invite_link_chat_type/channel'
  end
end
