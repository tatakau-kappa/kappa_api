require 'docomo_point/config'

module DocomoPoint
  class << self
    delegate :logger, to: :config

    def configure
      yield(config)
    end

    def config
      @config ||= Config.new
    end
  end
end

require 'docomo_point/client'