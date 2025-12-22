module TD::Types
  # Represents type of button in results of inline query.
  class InlineQueryResultsButtonType < Base
    autoload TD::Types.camelize('start_bot'), 'tdlib/types/inline_query_results_button_type/start_bot'
    autoload TD::Types.camelize('web_app'), 'tdlib/types/inline_query_results_button_type/web_app'
  end
end
