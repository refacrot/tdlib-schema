module TD::Types
  # Describes type of object, for which statistics are provided.
  class ChatStatisticsObjectType < Base
    autoload TD::Types.camelize('message'), 'tdlib/types/chat_statistics_object_type/message'
    autoload TD::Types.camelize('story'), 'tdlib/types/chat_statistics_object_type/story'
  end
end
