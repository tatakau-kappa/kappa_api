require 'external_provider/adapters'

module ExternalProvider
  class AdapterStore
    class NotImplementedAdapter < StandardError; end

    # @param [String, Symbol] provider
    # @param [Class, String] klass
    def register(provider, klass)
      adapters[provider] = klass.to_s
    end

    # @raise [NotImplementedAdapter]
    # @param [String, Symbol] provider
    # @return [Class]
    def adopt(provider)
      raise NotImplementedAdapter, "#{provider} is not implemented adapter" unless registered?(provider)
      adapters[provider].constantize
    end

    # @param [String, Symbol] provider
    # @param [Boolean]
    def registered?(provider)
      !adapters[provider].nil?
    end

    # @return [Array<String>]
    def providers
      @_providers ||= adapters.keys
    end

    private

    def adapters
      @_adapters ||= ActiveSupport::HashWithIndifferentAccess.new
    end
  end
end
