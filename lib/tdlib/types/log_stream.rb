module TD::Types
  # Describes a stream to which TDLib internal log is written.
  class LogStream < Base
    autoload TD::Types.camelize('default'), 'tdlib/types/log_stream/default'
    autoload TD::Types.camelize('file'), 'tdlib/types/log_stream/file'
    autoload TD::Types.camelize('empty'), 'tdlib/types/log_stream/empty'
  end
end
