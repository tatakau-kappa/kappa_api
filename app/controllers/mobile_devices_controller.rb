class MobileDevicesController < ApplicationController
  before_action :authenticate_user_from_token!

  def create
    current_user.user_mobile_devices.create!(
      device_token: params[:device_token],
      device_type: params[:device_type] || :ios
    )

    head :no_content
  end
end