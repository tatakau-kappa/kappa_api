FactoryGirl.define do
  factory :user do
    password { Devise.friendly_token[0,20] }
    image_url 'https://facebook.com/hgoe.jpg'
    screen_name 'Kappa Taro'

    after(:create) do |user|
      create(:user_provider, user: user)
    end
  end
end