require 'koala'
require 'external_provider/adapters/adapter'

module ExternalProvider
  module Adapters
    class FacebookAdapter < Adapter
      # @return [String]
      # @return [nil]
      def email
        user_info['email'].presence
      end

      # @raise [InvalidAttribute] in most cases, if the profile image is blank, the provider changed its specifications
      # @return [String]
      def uid
        user_info['id'].tap do |id|
          raise ExternalProvider::Adapters::InvalidAttribute, "'id' is not found or blank" if id.blank?
        end
      end

      # @return [String]
      def image_url
        "https://graph.facebook.com/#{uid}/picture?type=large"
      end

      # @return [String]
      # @return [nil]
      def name
        user_info['name'].presence
      end

      private

      def user_info
        @_user_info ||= client.get_object('me', fields: 'id,email,name')
      rescue Koala::Facebook::AuthenticationError => e
        raise ExternalProvider::Adapters::AuthenticationError, e
      end

      def client
        @_client ||= Koala::Facebook::API.new(access_token)
      end
    end
  end
end

ActiveSupport.on_load :external_provider do
  ExternalProvider.adapters.register(:facebook, ExternalProvider::Adapters::FacebookAdapter)
end
