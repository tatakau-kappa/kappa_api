class VideoSerializer < ActiveModel::Serializer
  attributes :id, :resource, :program_name, :view_count

  has_many :video_comments

  def resource
    {
      original: object.original_path,
      swapped: object.swapped_path,
      thumbnail: object.thumbnail_path
    }
  end
end
