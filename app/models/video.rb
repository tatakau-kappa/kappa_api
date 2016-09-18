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

    def remove_ad_point
      10
    end
  end

  def register_transition_job(options = {})
    self.class.redis.lpush(
      self.class.queue_name,
      { video_id: id, video_uid: video_uid, image_uid: image_uid }.merge(options).to_json
    )
  end

  def remove_ad
    user.docomo_point.consume(self.class.remove_ad_point)

    self
  end

  def add_up_bonus(vc)
    if (vc % 10).zero?
      d_client = DocomoPoint::Client.new(user.docomo_token.token)
      # Docomo Point を 1 point 付与
      d_client.add_up(1)
      user.user_mobile_devices.notify_to_ios('dポイントを獲得しました')
    end

    self
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
      "https://d2nfxe3r64iwve.cloudfront.net/#{key.sub(/(.*processed\/)?/, '')}"
    end
  end
end
