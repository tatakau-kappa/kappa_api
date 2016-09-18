class AddIndexToUserMobileDevices < ActiveRecord::Migration[5.0]
  def change
    add_index :user_mobile_devices, [:device_type, :device_token], unique: true
  end
end
