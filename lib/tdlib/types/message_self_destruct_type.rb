module TD::Types
  # Describes when a message will be self-destructed.
  class MessageSelfDestructType < Base
    autoload TD::Types.camelize('timer'), 'tdlib/types/message_self_destruct_type/timer'
    autoload TD::Types.camelize('immediately'), 'tdlib/types/message_self_destruct_type/immediately'
  end
end
