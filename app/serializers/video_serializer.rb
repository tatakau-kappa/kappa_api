class VideoSerializer < ApplicationSerializer
  attributes :id, :resource, :program_name, :view_count

  has_many :video_comments
  belongs_to :user

  def resource
    {
      swapped: video_url(object),
      thumbnail: object.thumbnail_url
    }
  end
end
