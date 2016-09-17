FactoryGirl.define do
  factory :video do
    user
    original_uid { "#{Devise.friendly_token[0,20]}.mp4" }
    swapped_uid { "#{Devise.friendly_token[0,20]}.mp4" }
    thumbnail_uid { "#{Devise.friendly_token[0,20]}.jpg" }
    program_name '番組名'
  end
end
