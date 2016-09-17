module DocomoPoint
  class Response
    attr_reader :status, :headers

    def initialize(status, body, headers)
      @status  = status.to_i
      @body    = body
      @headers = headers
    end

    def body
      Body.new(@body)
    end

    class Body
      def initialize(body)
        @body = body
      end

      def to_obj
        JSON.parse(@body)
      end

      def to_json
        @body
      end
    end
  end
end