module TD::Types
  # Describes a reason why an external chat is shown in a chat list.
  class ChatSource < Base
    autoload TD::Types.camelize('mtproto_proxy'), 'tdlib/types/chat_source/mtproto_proxy'
    autoload TD::Types.camelize('public_service_announcement'), 'tdlib/types/chat_source/public_service_announcement'
  end
end
