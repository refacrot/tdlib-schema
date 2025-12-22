module TD::Types
  # Describes result of chat report.
  class ReportChatResult < Base
    autoload TD::Types.camelize('ok'), 'tdlib/types/report_chat_result/ok'
    autoload TD::Types.camelize('option_required'), 'tdlib/types/report_chat_result/option_required'
    autoload TD::Types.camelize('text_required'), 'tdlib/types/report_chat_result/text_required'
    autoload TD::Types.camelize('messages_required'), 'tdlib/types/report_chat_result/messages_required'
  end
end
