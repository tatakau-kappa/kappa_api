module DocomoPoint
  class Config
    attr_writer :logger

    def logger
      @logger ||= default_logger
    end

    private

    def default_logger
      logger       = Logger.new($stdout)
      logger.level = Logger::WARN
      logger
    end
  end
end