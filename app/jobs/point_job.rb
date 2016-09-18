class PointJob < ApplicationJob
  queue_as :default

  def perform(video, view_count)
    Rails.logger.info('================ Run PointJob ===================')
    video.add_up_bonus(view_count)
  end
end
