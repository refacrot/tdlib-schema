module TD::Types
  # Describes result of sponsored message or chat report.
  class ReportSponsoredResult < Base
    autoload TD::Types.camelize('ok'), 'tdlib/types/report_sponsored_result/ok'
    autoload TD::Types.camelize('failed'), 'tdlib/types/report_sponsored_result/failed'
    autoload TD::Types.camelize('option_required'), 'tdlib/types/report_sponsored_result/option_required'
    autoload TD::Types.camelize('ads_hidden'), 'tdlib/types/report_sponsored_result/ads_hidden'
    autoload TD::Types.camelize('premium_required'), 'tdlib/types/report_sponsored_result/premium_required'
  end
end
