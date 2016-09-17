class Users::VideosController < ApplicationController
  def index
    render json: resource.videos.includes(:video_comments), each_serializer: VideoSerializer
  end

  private

  def resource
    @_resource ||= User.find(params[:user_id])
  end
end