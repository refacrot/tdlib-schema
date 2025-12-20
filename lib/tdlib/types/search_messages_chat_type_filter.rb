module TD::Types
  # Represents a filter for type of the chats in which to search messages.
  class SearchMessagesChatTypeFilter < Base
%w[
  private
      group
      channel
].each do |type|
  autoload TD::Types.camelize(type), "tdlib/types/search_messages_chat_type_filter/#{type}"
end
  end
end
