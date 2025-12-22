module TD::Types
  # Describes a source from which the Premium features screen is opened.
  class PremiumSource < Base
    autoload TD::Types.camelize('limit_exceeded'), 'tdlib/types/premium_source/limit_exceeded'
    autoload TD::Types.camelize('feature'), 'tdlib/types/premium_source/feature'
    autoload TD::Types.camelize('business_feature'), 'tdlib/types/premium_source/business_feature'
    autoload TD::Types.camelize('story_feature'), 'tdlib/types/premium_source/story_feature'
    autoload TD::Types.camelize('link'), 'tdlib/types/premium_source/link'
    autoload TD::Types.camelize('settings'), 'tdlib/types/premium_source/settings'
  end
end
