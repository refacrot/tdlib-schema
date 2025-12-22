module TD::Types
  # Describes the type of inline keyboard button.
  class InlineKeyboardButtonType < Base
    autoload TD::Types.camelize('url'), 'tdlib/types/inline_keyboard_button_type/url'
    autoload TD::Types.camelize('login_url'), 'tdlib/types/inline_keyboard_button_type/login_url'
    autoload TD::Types.camelize('web_app'), 'tdlib/types/inline_keyboard_button_type/web_app'
    autoload TD::Types.camelize('callback'), 'tdlib/types/inline_keyboard_button_type/callback'
    autoload TD::Types.camelize('callback_with_password'), 'tdlib/types/inline_keyboard_button_type/callback_with_password'
    autoload TD::Types.camelize('callback_game'), 'tdlib/types/inline_keyboard_button_type/callback_game'
    autoload TD::Types.camelize('switch_inline'), 'tdlib/types/inline_keyboard_button_type/switch_inline'
    autoload TD::Types.camelize('buy'), 'tdlib/types/inline_keyboard_button_type/buy'
    autoload TD::Types.camelize('user'), 'tdlib/types/inline_keyboard_button_type/user'
    autoload TD::Types.camelize('copy_text'), 'tdlib/types/inline_keyboard_button_type/copy_text'
  end
end
