require 'active_support/all'
require 'external_provider/adapter_store'
require 'external_provider/config'

module ExternalProvider
  class << self
    delegate :providers, to: :adapters

    # @return [ExternalProvider::AdapterStore]
    def adapters
      @adapters ||= AdapterStore.new
    end

    def configure
      yield(config)
    end

    # @return [ExternalProvider::Config]
    def config
      @config ||= Config.new
    end

    # Use test only
    def reset_config
      @config = nil
    end
  end
end

require 'external_provider/client'

ActiveSupport.run_load_hooks(:external_provider)