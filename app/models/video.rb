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
    self.class.redis.lpush(self.class.queue_name, { video_id: id, original_uid: original_uid }.to_json)
  end

  def original_path
    resource_path(original_uid)
  end

  def swapped_path
    resource_path(swapped_uid)
  end

  def thumbnail_path
    resource_path(thumbnail_uid)
  end

  private

  def resource_path(key)
    "https://d2nfxe3r64iwve.cloudfront.net/#{key}" if key.present?
  end
end
