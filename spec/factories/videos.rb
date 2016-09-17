FactoryGirl.define do
  factory :video do
    user
    video_uid { "#{Devise.friendly_token[0,20]}.mp4" }
    image_uid { "#{Devise.friendly_token[0,20]}.jpg" }
    swapped_uid { "#{Devise.friendly_token[0,20]}.mp4" }
    thumbnail_uid { "#{Devise.friendly_token[0,20]}.jpg" }
    program_name '番組名'
  end
end
