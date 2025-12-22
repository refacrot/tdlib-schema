module TD::Types
  # Describes the type of poll.
  class PollType < Base
    autoload TD::Types.camelize('regular'), 'tdlib/types/poll_type/regular'
    autoload TD::Types.camelize('quiz'), 'tdlib/types/poll_type/quiz'
  end
end
