module TD::Types
  # Describes price of a suggested post.
  class SuggestedPostPrice < Base
    autoload TD::Types.camelize('star'), 'tdlib/types/suggested_post_price/star'
    autoload TD::Types.camelize('ton'), 'tdlib/types/suggested_post_price/ton'
  end
end
