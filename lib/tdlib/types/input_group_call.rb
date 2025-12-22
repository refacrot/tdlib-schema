module TD::Types
  # Describes a non-joined group call that isn't bound to a chat.
  class InputGroupCall < Base
    autoload TD::Types.camelize('link'), 'tdlib/types/input_group_call/link'
    autoload TD::Types.camelize('message'), 'tdlib/types/input_group_call/message'
  end
end
