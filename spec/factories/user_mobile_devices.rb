FactoryGirl.define do
  factory :user_mobile_device do
    device_token { Devise.friendly_token[0,20] }
    device_type 'ios'
  end
end
