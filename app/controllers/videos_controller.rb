class VideosController < ApplicationController
  skip_before_action :authenticate_user_from_token!, only: [:update]

  def index
    render json: Video.includes(:video_comments).order(created_at: :desc)
  end

  def show
    video = Video.find(params[:id])
    return head :not_found if video.swapped_path.blank?

    video.increment!(:view_count)
    redirect_to video.swapped_path
  end

  def create
    videos = current_user.videos
    video = ApplicationRecord.transaction do
      videos.create!(original_uid: params[:original_uid]).tap { |video| video.register_transition_job }
    end

    render json: video, status: :created
  end

  # For internal
  def update
    video = Video.find(params[:id])
    video.update!(
      swapped_uid: params[:swapped_uid],
      thumbnail_uid: params[:thumbnail_uid]
    )

    head :no_content
  end
end