class CreateUserMobileDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :user_mobile_devices do |t|
      t.references :user, null: false
      t.string :device_token, null: false
      t.string :device_type,  null: false

      t.timestamps
    end
  end
end
