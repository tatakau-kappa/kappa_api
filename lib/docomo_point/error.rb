module DocomoPoint
  class Error < StandardError
    attr_reader :status

    # @param [Exception, String] err
    # @param [Integer] status
    def initialize(err, status = nil)
      @cause = nil
      @status = status

      if err.respond_to?(:backtrace)
        super(err.message)
        @cause = err
      else
        super(err.to_s)
      end
    end

    def backtrace
      @cause ? @cause.backtrace : super
    end

    class << self
      # @param [String] body
      # @param [Integer] status
      def from_response(body, status)
        case status
        when 401
          AuthenticationError.new(body, status)
        when 403
          AuthorizationError.new(body, status)
        when 400...500
          ClientError.new(body, status)
        when 500...600
          ServerError.new(body, status)
        end
      end
    end
  end

  # A 4xx class HTTP error
  class ClientError < Error; end

  # A 401 HTTP error
  class AuthenticationError < ClientError; end

  # A 403 HTTP error
  class AuthorizationError < ClientError; end

  # A 5xx class HTTP error
  class ServerError < Error; end
end