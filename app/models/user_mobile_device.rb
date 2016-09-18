class UserMobileDevice < ApplicationRecord
  belongs_to :user

  scope :ios, -> { where(device_type: :ios) }

  class << self
    def notify_to_ios(message)
      return unless Rails.env.production?

      ios.each do |mobile_device|
        notification = Houston::Notification.new(device: mobile_device.device_token)
        notification.alert = message
        notification.badge = 1
        notification.sound = 'sosumi.aiff'
        notification.category = 'INVITE_CATEGORY'
        notification.content_available = true

        Settings.apn.push(notification)
      end
    end
  end
end
