class Video < ApplicationRecord
  belongs_to :user
  has_many :video_comments, dependent: :destroy

  class << self
    def redis
      @redis ||= Redis.new(url: Settings.redis.url)
    end

    def queue_name
      'kappa'
    end
  end

  def register_transition_job
    self.class.redis.lpush(
      self.class.queue_name,
      { video_id: id, video_uid: video_uid, image_uid: image_uid }.to_json
    )
  end

  def add_up_bonus
    if (view_count % 10).zero?
      d_client = DocomoPoint::Client.new('token')
      d_client.add_up(100)
      user.user_mobile_devices.notify_to_ios('dポイントを獲得しました')
    end
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
