module TD::Types
  # Describes type of Saved Messages topic.
  class SavedMessagesTopicType < Base
    autoload TD::Types.camelize('my_notes'), 'tdlib/types/saved_messages_topic_type/my_notes'
    autoload TD::Types.camelize('author_hidden'), 'tdlib/types/saved_messages_topic_type/author_hidden'
    autoload TD::Types.camelize('saved_from_chat'), 'tdlib/types/saved_messages_topic_type/saved_from_chat'
  end
end
