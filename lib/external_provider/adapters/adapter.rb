require 'external_provider/adapters/errors'

module ExternalProvider
  module Adapters
    class Adapter
      INTERFACES = %w(email uid image_url name).freeze

      attr_reader :access_token

      # @param [String] access_token
      def initialize(access_token)
        @access_token = access_token
      end

      INTERFACES.each do |interface|
        class_eval <<-EOF
          # @note this method need override
          # @raise [NotImplementedError]
          def #{interface}
            raise NotImplementedError, "You must implement \#{self.class}##{interface}"
          end
        EOF
      end
    end
  end
end
