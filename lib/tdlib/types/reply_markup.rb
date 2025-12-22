module TD::Types
  # Contains a description of a custom keyboard and actions that can be done with it to quickly reply to bots.
  class ReplyMarkup < Base
    autoload TD::Types.camelize('remove_keyboard'), 'tdlib/types/reply_markup/remove_keyboard'
    autoload TD::Types.camelize('force_reply'), 'tdlib/types/reply_markup/force_reply'
    autoload TD::Types.camelize('show_keyboard'), 'tdlib/types/reply_markup/show_keyboard'
    autoload TD::Types.camelize('inline_keyboard'), 'tdlib/types/reply_markup/inline_keyboard'
  end
end
