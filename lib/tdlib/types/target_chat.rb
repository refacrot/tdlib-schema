module TD::Types
  # Describes the target chat to be opened.
  class TargetChat < Base
    autoload TD::Types.camelize('current'), 'tdlib/types/target_chat/current'
    autoload TD::Types.camelize('chosen'), 'tdlib/types/target_chat/chosen'
    autoload TD::Types.camelize('internal_link'), 'tdlib/types/target_chat/internal_link'
  end
end
