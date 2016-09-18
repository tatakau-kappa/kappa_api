class PointsController < ApplicationController
  before_action :authenticate_user_from_token!

  def show
    d_client = DocomoPoint::Client.new(current_user.docomo_token.token)
    response.headers['Content-Type'] = 'application/json'

    render plain: d_client.current_point.body.to_json
  end
end