module TD::Types
  # Describes a formatted text object.
  class RichText < Base
    autoload TD::Types.camelize('plain'), 'tdlib/types/rich_text/plain'
    autoload TD::Types.camelize('bold'), 'tdlib/types/rich_text/bold'
    autoload TD::Types.camelize('italic'), 'tdlib/types/rich_text/italic'
    autoload TD::Types.camelize('underline'), 'tdlib/types/rich_text/underline'
    autoload TD::Types.camelize('strikethrough'), 'tdlib/types/rich_text/strikethrough'
    autoload TD::Types.camelize('fixed'), 'tdlib/types/rich_text/fixed'
    autoload TD::Types.camelize('url'), 'tdlib/types/rich_text/url'
    autoload TD::Types.camelize('email_address'), 'tdlib/types/rich_text/email_address'
    autoload TD::Types.camelize('subscript'), 'tdlib/types/rich_text/subscript'
    autoload TD::Types.camelize('superscript'), 'tdlib/types/rich_text/superscript'
    autoload TD::Types.camelize('marked'), 'tdlib/types/rich_text/marked'
    autoload TD::Types.camelize('phone_number'), 'tdlib/types/rich_text/phone_number'
    autoload TD::Types.camelize('icon'), 'tdlib/types/rich_text/icon'
    autoload TD::Types.camelize('reference'), 'tdlib/types/rich_text/reference'
    autoload TD::Types.camelize('anchor'), 'tdlib/types/rich_text/anchor'
    autoload TD::Types.camelize('anchor_link'), 'tdlib/types/rich_text/anchor_link'
    autoload TD::Types.camelize('s'), 'tdlib/types/rich_text/s'
  end
end
