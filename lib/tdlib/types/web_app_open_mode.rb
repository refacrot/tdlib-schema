module TD::Types
  # Describes mode in which a Web App is opened.
  class WebAppOpenMode < Base
    autoload TD::Types.camelize('compact'), 'tdlib/types/web_app_open_mode/compact'
    autoload TD::Types.camelize('full_size'), 'tdlib/types/web_app_open_mode/full_size'
    autoload TD::Types.camelize('full_screen'), 'tdlib/types/web_app_open_mode/full_screen'
  end
end
