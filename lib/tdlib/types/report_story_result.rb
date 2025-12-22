module TD::Types
  # Describes result of story report.
  class ReportStoryResult < Base
    autoload TD::Types.camelize('ok'), 'tdlib/types/report_story_result/ok'
    autoload TD::Types.camelize('option_required'), 'tdlib/types/report_story_result/option_required'
    autoload TD::Types.camelize('text_required'), 'tdlib/types/report_story_result/text_required'
  end
end
