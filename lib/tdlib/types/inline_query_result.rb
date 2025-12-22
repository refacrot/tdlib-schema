module TD::Types
  # Represents a single result of an inline query.
  class InlineQueryResult < Base
    autoload TD::Types.camelize('article'), 'tdlib/types/inline_query_result/article'
    autoload TD::Types.camelize('contact'), 'tdlib/types/inline_query_result/contact'
    autoload TD::Types.camelize('location'), 'tdlib/types/inline_query_result/location'
    autoload TD::Types.camelize('venue'), 'tdlib/types/inline_query_result/venue'
    autoload TD::Types.camelize('game'), 'tdlib/types/inline_query_result/game'
    autoload TD::Types.camelize('animation'), 'tdlib/types/inline_query_result/animation'
    autoload TD::Types.camelize('audio'), 'tdlib/types/inline_query_result/audio'
    autoload TD::Types.camelize('document'), 'tdlib/types/inline_query_result/document'
    autoload TD::Types.camelize('photo'), 'tdlib/types/inline_query_result/photo'
    autoload TD::Types.camelize('sticker'), 'tdlib/types/inline_query_result/sticker'
    autoload TD::Types.camelize('video'), 'tdlib/types/inline_query_result/video'
    autoload TD::Types.camelize('voice_note'), 'tdlib/types/inline_query_result/voice_note'
  end
end
