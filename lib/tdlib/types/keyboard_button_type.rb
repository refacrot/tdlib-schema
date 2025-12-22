module TD::Types
  # Describes a keyboard button type.
  class KeyboardButtonType < Base
    autoload TD::Types.camelize('text'), 'tdlib/types/keyboard_button_type/text'
    autoload TD::Types.camelize('request_phone_number'), 'tdlib/types/keyboard_button_type/request_phone_number'
    autoload TD::Types.camelize('request_location'), 'tdlib/types/keyboard_button_type/request_location'
    autoload TD::Types.camelize('request_poll'), 'tdlib/types/keyboard_button_type/request_poll'
    autoload TD::Types.camelize('request_users'), 'tdlib/types/keyboard_button_type/request_users'
    autoload TD::Types.camelize('request_chat'), 'tdlib/types/keyboard_button_type/request_chat'
    autoload TD::Types.camelize('web_app'), 'tdlib/types/keyboard_button_type/web_app'
  end
end
