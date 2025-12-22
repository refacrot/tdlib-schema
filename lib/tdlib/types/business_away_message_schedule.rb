module TD::Types
  # Describes conditions for sending of away messages by a Telegram Business account.
  class BusinessAwayMessageSchedule < Base
    autoload TD::Types.camelize('always'), 'tdlib/types/business_away_message_schedule/always'
    autoload TD::Types.camelize('outside_of_opening_hours'), 'tdlib/types/business_away_message_schedule/outside_of_opening_hours'
    autoload TD::Types.camelize('custom'), 'tdlib/types/business_away_message_schedule/custom'
  end
end
