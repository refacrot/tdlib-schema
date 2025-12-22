module TD::Types
  # Represents a single result of an inline query; for bots only.
  class InputInlineQueryResult < Base
    autoload TD::Types.camelize('animation'), 'tdlib/types/input_inline_query_result/animation'
    autoload TD::Types.camelize('article'), 'tdlib/types/input_inline_query_result/article'
    autoload TD::Types.camelize('audio'), 'tdlib/types/input_inline_query_result/audio'
    autoload TD::Types.camelize('contact'), 'tdlib/types/input_inline_query_result/contact'
    autoload TD::Types.camelize('document'), 'tdlib/types/input_inline_query_result/document'
    autoload TD::Types.camelize('game'), 'tdlib/types/input_inline_query_result/game'
    autoload TD::Types.camelize('location'), 'tdlib/types/input_inline_query_result/location'
    autoload TD::Types.camelize('photo'), 'tdlib/types/input_inline_query_result/photo'
    autoload TD::Types.camelize('sticker'), 'tdlib/types/input_inline_query_result/sticker'
    autoload TD::Types.camelize('venue'), 'tdlib/types/input_inline_query_result/venue'
    autoload TD::Types.camelize('video'), 'tdlib/types/input_inline_query_result/video'
    autoload TD::Types.camelize('voice_note'), 'tdlib/types/input_inline_query_result/voice_note'
  end
end
