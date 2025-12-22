module TD::Types
  # Describes a reason why a bot was allowed to write messages to the current user.
  class BotWriteAccessAllowReason < Base
    autoload TD::Types.camelize('connected_website'), 'tdlib/types/bot_write_access_allow_reason/connected_website'
    autoload TD::Types.camelize('added_to_attachment_menu'), 'tdlib/types/bot_write_access_allow_reason/added_to_attachment_menu'
    autoload TD::Types.camelize('launched_web_app'), 'tdlib/types/bot_write_access_allow_reason/launched_web_app'
    autoload TD::Types.camelize('accepted_request'), 'tdlib/types/bot_write_access_allow_reason/accepted_request'
  end
end
