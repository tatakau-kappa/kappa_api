require 'docomo_point/error'
require 'docomo_point/response'

module DocomoPoint
  class Client
    FARADAY_MIDDLEWARE = proc do |faraday|
      faraday.use     Faraday::Response::Logger, DocomoPoint.logger
      faraday.adapter Faraday.default_adapter
    end.freeze

    class << self
      def base_url
        'http://160.16.66.40/dummypoint/api/v1'
      end
    end

    def initialize(access_token)
      @access_token = access_token
    end

    def current_point
      faraday_options = {
        url: self.class.base_url
      }

      params = {
        token: @access_token
      }
      conn = Faraday.new(faraday_options, &FARADAY_MIDDLEWARE)
      res  = conn.get('/point', params)

      raise_or_return_response(res)
    end

    def add_up(point)
      faraday_options = {
        url: self.class.base_url
      }

      params = {
        token: @access_token,
        point: point
      }
      conn = Faraday.new(faraday_options, &FARADAY_MIDDLEWARE)
      res  = conn.get('/save', params)

      raise_or_return_response(res)
    end

    def consume(point)
      faraday_options = {
        url: self.class.base_url
      }

      params = {
        token: @access_token,
        point: point
      }
      conn = Faraday.new(faraday_options, &FARADAY_MIDDLEWARE)
      res  = conn.get('/pay', params)

      raise_or_return_response(res)
    end

    private

    def raise_or_return_response(res)
      response = Response.new(res.status, res.body, res.headers)
      klass = DocomoPoint::Error.from_response(response.body, response.status)
      unless klass.nil?
        DocomoPoint.logger.debug response
        raise klass
      end
      response
    end
  end
end