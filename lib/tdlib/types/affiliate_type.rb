module TD::Types
  # Describes type of affiliate for an affiliate program.
  class AffiliateType < Base
    autoload TD::Types.camelize('current_user'), 'tdlib/types/affiliate_type/current_user'
    autoload TD::Types.camelize('bot'), 'tdlib/types/affiliate_type/bot'
    autoload TD::Types.camelize('channel'), 'tdlib/types/affiliate_type/channel'
  end
end
