class ApplicationController < ActionController::API
  include AbstractController::Translation

  respond_to :json

  rescue_from ActiveRecord::RecordNotFound do |_e|
    render json: { error: 'Record not found' }, status: :not_found
  end

  def ping
    render text: 'pong'
  end

  ##
  # User Authentication
  # Authenticates the user with OAuth2 Resource Owner Password Credentials
  def authenticate_user_from_token!
    auth_token = request.headers['Authorization']

    if auth_token
      authenticate_with_auth_token auth_token
    else
      authenticate_error
    end
  end

  private

  def authenticate_with_auth_token auth_token
    unless auth_token.include?(':')
      authenticate_error
      return
    end

    user_id = auth_token.split(':').first
    user = User.find_by(id: user_id)

    if user && Devise.secure_compare(user.access_token, auth_token)
      # User can access
      sign_in user, store: false
    else
      authenticate_error
    end
  end

  ##
  # Authentication Failure
  # Renders a 401 error
  def authenticate_error
    # User's token is either invalid or not in the right format
    render json: { error: 'unauthorized' }, status: 401 # Authentication
  end
end
