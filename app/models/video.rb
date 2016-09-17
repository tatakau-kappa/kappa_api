class Video < ApplicationRecord
  belongs_to :user
  has_many :video_comments

  class << self
    def redis
      @redis ||= Redis.new(url: Settings.redis.url)
    end

    def queue_name
      'kappa'
    end
  end

  def register_transition_job
    self.class.redis.lpush(self.class.queue_name, { video_uid: video_uid, image_uid: image_uid }.to_json)
  end

  def swapped_url
    resource_url(swapped_uid)
  end

  def thumbnail_url
    resource_url(thumbnail_uid)
  end

  private

  def resource_url(key)
    if key.present?
      "https://d2nfxe3r64iwve.cloudfront.net/#{key.sub('processed/', '')}"
    end
  end
end
