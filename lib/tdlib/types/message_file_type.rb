module TD::Types
  # Contains information about a file with messages exported from another app.
  class MessageFileType < Base
    autoload TD::Types.camelize('private'), 'tdlib/types/message_file_type/private'
    autoload TD::Types.camelize('group'), 'tdlib/types/message_file_type/group'
    autoload TD::Types.camelize('unknown'), 'tdlib/types/message_file_type/unknown'
  end
end
