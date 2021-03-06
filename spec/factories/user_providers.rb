FactoryGirl.define do
  factory :user_provider do
    user
    access_token { Devise.friendly_token[0,20] }
    provider_name 'facebook'
    uid { Devise.friendly_token[0,20] }
  end
end