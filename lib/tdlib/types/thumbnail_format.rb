module TD::Types
  # Describes format of a thumbnail.
  class ThumbnailFormat < Base
    autoload TD::Types.camelize('jpeg'), 'tdlib/types/thumbnail_format/jpeg'
    autoload TD::Types.camelize('gif'), 'tdlib/types/thumbnail_format/gif'
    autoload TD::Types.camelize('mpeg4'), 'tdlib/types/thumbnail_format/mpeg4'
    autoload TD::Types.camelize('png'), 'tdlib/types/thumbnail_format/png'
    autoload TD::Types.camelize('tgs'), 'tdlib/types/thumbnail_format/tgs'
    autoload TD::Types.camelize('webm'), 'tdlib/types/thumbnail_format/webm'
    autoload TD::Types.camelize('webp'), 'tdlib/types/thumbnail_format/webp'
  end
end
