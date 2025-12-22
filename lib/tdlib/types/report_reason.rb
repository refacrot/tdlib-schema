module TD::Types
  # Describes the reason why a chat is reported.
  class ReportReason < Base
    autoload TD::Types.camelize('spam'), 'tdlib/types/report_reason/spam'
    autoload TD::Types.camelize('violence'), 'tdlib/types/report_reason/violence'
    autoload TD::Types.camelize('pornography'), 'tdlib/types/report_reason/pornography'
    autoload TD::Types.camelize('child_abuse'), 'tdlib/types/report_reason/child_abuse'
    autoload TD::Types.camelize('copyright'), 'tdlib/types/report_reason/copyright'
    autoload TD::Types.camelize('unrelated_location'), 'tdlib/types/report_reason/unrelated_location'
    autoload TD::Types.camelize('fake'), 'tdlib/types/report_reason/fake'
    autoload TD::Types.camelize('illegal_drugs'), 'tdlib/types/report_reason/illegal_drugs'
    autoload TD::Types.camelize('personal_details'), 'tdlib/types/report_reason/personal_details'
    autoload TD::Types.camelize('custom'), 'tdlib/types/report_reason/custom'
  end
end
