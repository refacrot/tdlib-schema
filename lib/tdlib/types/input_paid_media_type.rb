module TD::Types
  # Describes type of paid media to sent.
  class InputPaidMediaType < Base
    autoload TD::Types.camelize('photo'), 'tdlib/types/input_paid_media_type/photo'
    autoload TD::Types.camelize('video'), 'tdlib/types/input_paid_media_type/video'
  end
end
