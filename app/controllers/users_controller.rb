class UsersController < ApplicationController
  def create
    user = User.from_omniauth(**user_params)

    render json: user, login: true
  end

  private

  def user_params
    {
      uid: params[:id],
      provider_name: params[:provider],
      access_token: params[:access_token]
    }
  end
end
