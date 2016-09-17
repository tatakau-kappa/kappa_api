class VideosController < ApplicationController
  skip_before_action :authenticate_user_from_token!, only: [:show, :update, :destroy]

  def index
    render json: Video.includes(:video_comments).order(created_at: :desc)
  end

  def show
    video = Video.find(params[:id])
    return head 102 if video.swapped_url.blank?

    video.increment!(:view_count)
    redirect_to video.swapped_url
  end

  def create
    videos = current_user.videos
    video = ApplicationRecord.transaction do
      videos.create!(video_params.to_h).tap { |video| video.register_transition_job }
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

  def destroy
    Video.find(params[:id]).destroy
  end

  private

  def video_params
    params.permit(:image_uid, :video_uid, :program_name)
  end
end
