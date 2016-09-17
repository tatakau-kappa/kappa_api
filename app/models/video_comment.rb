class VideoComment < ApplicationRecord
  belongs_to :user
  belongs_to :video

  validates :contents, length: { minimum: 1 }
end
