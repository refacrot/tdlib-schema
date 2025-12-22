module TD::Types
  # Describes the exact type of problem with a call.
  class CallProblem < Base
    autoload TD::Types.camelize('echo'), 'tdlib/types/call_problem/echo'
    autoload TD::Types.camelize('noise'), 'tdlib/types/call_problem/noise'
    autoload TD::Types.camelize('interruptions'), 'tdlib/types/call_problem/interruptions'
    autoload TD::Types.camelize('distorted_speech'), 'tdlib/types/call_problem/distorted_speech'
    autoload TD::Types.camelize('silent_local'), 'tdlib/types/call_problem/silent_local'
    autoload TD::Types.camelize('silent_remote'), 'tdlib/types/call_problem/silent_remote'
    autoload TD::Types.camelize('dropped'), 'tdlib/types/call_problem/dropped'
    autoload TD::Types.camelize('distorted_video'), 'tdlib/types/call_problem/distorted_video'
    autoload TD::Types.camelize('pixelated_video'), 'tdlib/types/call_problem/pixelated_video'
  end
end
