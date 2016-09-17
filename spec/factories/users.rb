FactoryGirl.define do
  factory :user do
    password { Devise.friendly_token[0,20] }

    after(:create) do |user|
      create(:user_provider, user: user)
    end
  end
end