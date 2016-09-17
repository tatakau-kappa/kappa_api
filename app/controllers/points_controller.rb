class PointsController < ApplicationController
  def show
    # d_client = DocomoPoint::Client.new('token')
    # render plain: d_client.current_point.body.to_json
    response.headers['Content-Type'] = 'application/json'

    render plain: '{"point":200}'
  end
end