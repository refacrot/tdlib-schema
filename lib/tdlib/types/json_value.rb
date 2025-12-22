module TD::Types
  # Represents a JSON value.
  class JsonValue < Base
    autoload TD::Types.camelize('null'), 'tdlib/types/json_value/null'
    autoload TD::Types.camelize('boolean'), 'tdlib/types/json_value/boolean'
    autoload TD::Types.camelize('number'), 'tdlib/types/json_value/number'
    autoload TD::Types.camelize('string'), 'tdlib/types/json_value/string'
    autoload TD::Types.camelize('array'), 'tdlib/types/json_value/array'
    autoload TD::Types.camelize('object'), 'tdlib/types/json_value/object'
  end
end
