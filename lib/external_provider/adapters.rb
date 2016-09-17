Dir[File.expand_path('../adapters', __FILE__) << '/*.rb'].each { |f| require f }

module ExternalProvider
  module Adapters
  end
end
