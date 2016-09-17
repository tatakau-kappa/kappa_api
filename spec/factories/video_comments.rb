FactoryGirl.define do
  factory :video_comment do
    user
    video
    contents 'コメントだよー'
  end
end
