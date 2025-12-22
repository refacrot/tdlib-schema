module TD::Types
  # Contains information about an inline button of type inlineKeyboardButtonTypeLoginUrl.
  class LoginUrlInfo < Base
    autoload TD::Types.camelize('open'), 'tdlib/types/login_url_info/open'
    autoload TD::Types.camelize('request_confirmation'), 'tdlib/types/login_url_info/request_confirmation'
  end
end
