module TD::Types
  # The content of a message to send.
  class InputMessageContent < Base
    autoload TD::Types.camelize('text'), 'tdlib/types/input_message_content/text'
    autoload TD::Types.camelize('animation'), 'tdlib/types/input_message_content/animation'
    autoload TD::Types.camelize('audio'), 'tdlib/types/input_message_content/audio'
    autoload TD::Types.camelize('document'), 'tdlib/types/input_message_content/document'
    autoload TD::Types.camelize('paid_media'), 'tdlib/types/input_message_content/paid_media'
    autoload TD::Types.camelize('photo'), 'tdlib/types/input_message_content/photo'
    autoload TD::Types.camelize('sticker'), 'tdlib/types/input_message_content/sticker'
    autoload TD::Types.camelize('video'), 'tdlib/types/input_message_content/video'
    autoload TD::Types.camelize('video_note'), 'tdlib/types/input_message_content/video_note'
    autoload TD::Types.camelize('voice_note'), 'tdlib/types/input_message_content/voice_note'
    autoload TD::Types.camelize('location'), 'tdlib/types/input_message_content/location'
    autoload TD::Types.camelize('venue'), 'tdlib/types/input_message_content/venue'
    autoload TD::Types.camelize('contact'), 'tdlib/types/input_message_content/contact'
    autoload TD::Types.camelize('dice'), 'tdlib/types/input_message_content/dice'
    autoload TD::Types.camelize('game'), 'tdlib/types/input_message_content/game'
    autoload TD::Types.camelize('invoice'), 'tdlib/types/input_message_content/invoice'
    autoload TD::Types.camelize('poll'), 'tdlib/types/input_message_content/poll'
    autoload TD::Types.camelize('story'), 'tdlib/types/input_message_content/story'
    autoload TD::Types.camelize('checklist'), 'tdlib/types/input_message_content/checklist'
    autoload TD::Types.camelize('forwarded'), 'tdlib/types/input_message_content/forwarded'
  end
end
