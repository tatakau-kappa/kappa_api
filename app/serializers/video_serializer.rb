class VideoSerializer < ActiveModel::Serializer
  attributes :id, :resource, :program_name, :view_count

  has_many :video_comments

  def resource
    {
      original_image: object.original_image_path,
      original_video: object.original_video_path,
      swapped: object.swapped_path,
      thumbnail: object.thumbnail_path
    }
  end
end
