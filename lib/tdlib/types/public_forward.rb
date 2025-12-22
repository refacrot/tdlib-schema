module TD::Types
  # Describes a public forward or repost of a story.
  class PublicForward < Base
    autoload TD::Types.camelize('message'), 'tdlib/types/public_forward/message'
    autoload TD::Types.camelize('story'), 'tdlib/types/public_forward/story'
  end
end
