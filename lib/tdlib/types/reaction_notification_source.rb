module TD::Types
  # Describes sources of reactions for which notifications will be shown.
  class ReactionNotificationSource < Base
    autoload TD::Types.camelize('none'), 'tdlib/types/reaction_notification_source/none'
    autoload TD::Types.camelize('contacts'), 'tdlib/types/reaction_notification_source/contacts'
    autoload TD::Types.camelize('all'), 'tdlib/types/reaction_notification_source/all'
  end
end
