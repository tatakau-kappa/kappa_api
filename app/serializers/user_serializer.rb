class UserSerializer < ApplicationSerializer
  attributes :id, :screen_name, :image_url
  attribute :access_token, if: :login?

  def login?
    !!instance_options[:login]
  end
end

