module TD::Types
  # Represents a vector path command.
  class VectorPathCommand < Base
    autoload TD::Types.camelize('line'), 'tdlib/types/vector_path_command/line'
    autoload TD::Types.camelize('cubic_bezier_curve'), 'tdlib/types/vector_path_command/cubic_bezier_curve'
  end
end
