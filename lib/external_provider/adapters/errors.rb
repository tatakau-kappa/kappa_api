module ExternalProvider
  module Adapters
    class AdapterError < StandardError; end

    class InvalidAttribute < AdapterError; end
    class AuthenticationError < AdapterError; end
  end
end
