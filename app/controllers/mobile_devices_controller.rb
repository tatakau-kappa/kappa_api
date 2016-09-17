class MobileDevicesController < ApplicationController
  def create
    current_user.user_mobile_devices.create!(
      device_token: params[:device_token],
      device_type: params[:device_type] || :ios
    )

    head :no_content
  end
end