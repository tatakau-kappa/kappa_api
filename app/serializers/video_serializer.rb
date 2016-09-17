class VideoSerializer < ActiveModel::Serializer
  attributes :id, :resource, :program_name

  has_many :video_comments

  def resource
    {
      original: resource_path(object.original_uid),
      swapped: resource_path(object.swapped_uid),
      thumbnail: resource_path(object.thumbnail_uid)
    }
  end

  private

  def resource_path(key)
    "https://d2nfxe3r64iwve.cloudfront.net/#{key}"
  end
end
