class UserMobileDevice < ApplicationRecord
  belongs_to :user

  class << self
    def notify_to_ios(message)
      each do |mobile_device|
        notification = Houston::Notification.new(device: mobile_device.device_token)
        notification.alert = message
        notification.badge = 1
        notification.sound = 'sosumi.aiff'
        notification.category = 'INVITE_CATEGORY'
        notification.content_available = true

        Rails.application.apn.push(notification)
      end
    end
  end
end
