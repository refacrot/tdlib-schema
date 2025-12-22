module TD::Types
  # Describes the different types of activity in a chat.
  class ChatAction < Base
    autoload TD::Types.camelize('typing'), 'tdlib/types/chat_action/typing'
    autoload TD::Types.camelize('recording_video'), 'tdlib/types/chat_action/recording_video'
    autoload TD::Types.camelize('uploading_video'), 'tdlib/types/chat_action/uploading_video'
    autoload TD::Types.camelize('recording_voice_note'), 'tdlib/types/chat_action/recording_voice_note'
    autoload TD::Types.camelize('uploading_voice_note'), 'tdlib/types/chat_action/uploading_voice_note'
    autoload TD::Types.camelize('uploading_photo'), 'tdlib/types/chat_action/uploading_photo'
    autoload TD::Types.camelize('uploading_document'), 'tdlib/types/chat_action/uploading_document'
    autoload TD::Types.camelize('choosing_sticker'), 'tdlib/types/chat_action/choosing_sticker'
    autoload TD::Types.camelize('choosing_location'), 'tdlib/types/chat_action/choosing_location'
    autoload TD::Types.camelize('choosing_contact'), 'tdlib/types/chat_action/choosing_contact'
    autoload TD::Types.camelize('start_playing_game'), 'tdlib/types/chat_action/start_playing_game'
    autoload TD::Types.camelize('recording_video_note'), 'tdlib/types/chat_action/recording_video_note'
    autoload TD::Types.camelize('uploading_video_note'), 'tdlib/types/chat_action/uploading_video_note'
    autoload TD::Types.camelize('watching_animations'), 'tdlib/types/chat_action/watching_animations'
    autoload TD::Types.camelize('cancel'), 'tdlib/types/chat_action/cancel'
  end
end
