module TD::Types
  # Describes a paid media.
  class PaidMedia < Base
    autoload TD::Types.camelize('preview'), 'tdlib/types/paid_media/preview'
    autoload TD::Types.camelize('photo'), 'tdlib/types/paid_media/photo'
    autoload TD::Types.camelize('video'), 'tdlib/types/paid_media/video'
    autoload TD::Types.camelize('unsupported'), 'tdlib/types/paid_media/unsupported'
  end
end
