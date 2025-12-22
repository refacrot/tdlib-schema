module TD::Types
  # Describes state of a suggested post.
  class SuggestedPostState < Base
    autoload TD::Types.camelize('pending'), 'tdlib/types/suggested_post_state/pending'
    autoload TD::Types.camelize('approved'), 'tdlib/types/suggested_post_state/approved'
    autoload TD::Types.camelize('declined'), 'tdlib/types/suggested_post_state/declined'
  end
end
