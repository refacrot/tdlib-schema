module TD::Types
  # A simple object containing a vector of objects that hold a string; for testing only.
  #
  # @attr value [Array<TD::Types::TestString>] Vector of objects.
  class TestVectorStringObject < Base
    attribute :value, TD::Types::Array.of(TD::Types::TestString)
  end
end
