module TD::Types
  # A new pending text message was received in a chat with a bot.
  #   The message must be shown in the chat for at most getOption("pending_text_message_period") seconds, replace any
  #   other pending message with the same draft_id, and be deleted whenever any incoming message from the bot in the
  #   message thread is received.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr forum_topic_id [Integer] The forum topic identifier in which the message will be sent; 0 if none.
  # @attr draft_id [Integer] Unique identifier of the message draft within the message thread.
  # @attr text [TD::Types::FormattedText] Text of the pending message.
  class Update::PendingTextMessage < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :forum_topic_id, TD::Types::Coercible::Integer
    attribute :draft_id, TD::Types::Coercible::Integer
    attribute :text, TD::Types::FormattedText
  end
end
