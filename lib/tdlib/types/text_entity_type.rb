module TD::Types
  # Represents a part of the text which must be formatted differently.
  class TextEntityType < Base
    autoload TD::Types.camelize('mention'), 'tdlib/types/text_entity_type/mention'
    autoload TD::Types.camelize('hashtag'), 'tdlib/types/text_entity_type/hashtag'
    autoload TD::Types.camelize('cashtag'), 'tdlib/types/text_entity_type/cashtag'
    autoload TD::Types.camelize('bot_command'), 'tdlib/types/text_entity_type/bot_command'
    autoload TD::Types.camelize('url'), 'tdlib/types/text_entity_type/url'
    autoload TD::Types.camelize('email_address'), 'tdlib/types/text_entity_type/email_address'
    autoload TD::Types.camelize('phone_number'), 'tdlib/types/text_entity_type/phone_number'
    autoload TD::Types.camelize('bank_card_number'), 'tdlib/types/text_entity_type/bank_card_number'
    autoload TD::Types.camelize('bold'), 'tdlib/types/text_entity_type/bold'
    autoload TD::Types.camelize('italic'), 'tdlib/types/text_entity_type/italic'
    autoload TD::Types.camelize('underline'), 'tdlib/types/text_entity_type/underline'
    autoload TD::Types.camelize('strikethrough'), 'tdlib/types/text_entity_type/strikethrough'
    autoload TD::Types.camelize('spoiler'), 'tdlib/types/text_entity_type/spoiler'
    autoload TD::Types.camelize('code'), 'tdlib/types/text_entity_type/code'
    autoload TD::Types.camelize('pre'), 'tdlib/types/text_entity_type/pre'
    autoload TD::Types.camelize('pre_code'), 'tdlib/types/text_entity_type/pre_code'
    autoload TD::Types.camelize('block_quote'), 'tdlib/types/text_entity_type/block_quote'
    autoload TD::Types.camelize('expandable_block_quote'), 'tdlib/types/text_entity_type/expandable_block_quote'
    autoload TD::Types.camelize('text_url'), 'tdlib/types/text_entity_type/text_url'
    autoload TD::Types.camelize('mention_name'), 'tdlib/types/text_entity_type/mention_name'
    autoload TD::Types.camelize('custom_emoji'), 'tdlib/types/text_entity_type/custom_emoji'
    autoload TD::Types.camelize('media_timestamp'), 'tdlib/types/text_entity_type/media_timestamp'
  end
end
