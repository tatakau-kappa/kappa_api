class PointJob < ApplicationJob
  queue_as :default

  def perform(video, view_count)
    Rails.logger.debug('=================== video ================')
    Rails.logger.debug(video)
    Rails.logger.debug('================= video end ================')
    Rails.logger.debug('================= video count ================')
    Rails.logger.debug(view_count)
    Rails.logger.debug('=============== video count end ================')
    video.add_up_bonus(view_count)
  end
end
