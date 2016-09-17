class SessionSerializer < ApplicationSerializer
  attributes :token_type, :user, :access_token

  def user
    UserSerializer.new(object)
  end

  def token_type
    'Bearer'
  end
end