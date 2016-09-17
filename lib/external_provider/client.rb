require 'external_provider/adapters'

module ExternalProvider
  class Client
    include ActiveSupport::Rescuable

    class AuthenticationError < StandardError; end

    rescue_from ExternalProvider::Adapters::AuthenticationError do |e|
      raise AuthenticationError, e
    end

    # @param [String] access_token
    # @param [String, Symbol] provider
    def initialize(access_token, provider)
      @access_token = access_token
      @provider     = provider
    end

    Adapters::Adapter::INTERFACES.each do |name|
      class_eval <<-EOF
        def #{name}
          with_handler { adapter.#{name} }
        end
      EOF
    end

    private

    def adapter
      @_adapter ||= ExternalProvider.adapters.adopt(@provider).new(@access_token)
    end

    def with_handler(&block)
      yield
    rescue => e
      rescue_with_handler(e) || raise
    end
  end
end
