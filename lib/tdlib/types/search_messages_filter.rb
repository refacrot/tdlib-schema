module TD::Types
  # Represents a filter for message search results.
  class SearchMessagesFilter < Base
    autoload TD::Types.camelize('empty'), 'tdlib/types/search_messages_filter/empty'
    autoload TD::Types.camelize('animation'), 'tdlib/types/search_messages_filter/animation'
    autoload TD::Types.camelize('audio'), 'tdlib/types/search_messages_filter/audio'
    autoload TD::Types.camelize('document'), 'tdlib/types/search_messages_filter/document'
    autoload TD::Types.camelize('photo'), 'tdlib/types/search_messages_filter/photo'
    autoload TD::Types.camelize('video'), 'tdlib/types/search_messages_filter/video'
    autoload TD::Types.camelize('voice_note'), 'tdlib/types/search_messages_filter/voice_note'
    autoload TD::Types.camelize('photo_and_video'), 'tdlib/types/search_messages_filter/photo_and_video'
    autoload TD::Types.camelize('url'), 'tdlib/types/search_messages_filter/url'
    autoload TD::Types.camelize('chat_photo'), 'tdlib/types/search_messages_filter/chat_photo'
    autoload TD::Types.camelize('video_note'), 'tdlib/types/search_messages_filter/video_note'
    autoload TD::Types.camelize('voice_and_video_note'), 'tdlib/types/search_messages_filter/voice_and_video_note'
    autoload TD::Types.camelize('mention'), 'tdlib/types/search_messages_filter/mention'
    autoload TD::Types.camelize('unread_mention'), 'tdlib/types/search_messages_filter/unread_mention'
    autoload TD::Types.camelize('unread_reaction'), 'tdlib/types/search_messages_filter/unread_reaction'
    autoload TD::Types.camelize('failed_to_send'), 'tdlib/types/search_messages_filter/failed_to_send'
    autoload TD::Types.camelize('pinned'), 'tdlib/types/search_messages_filter/pinned'
  end
end
