class Users::CommentsController < ApplicationController
  def index
    render json: resource.video_comments.includes(:video), each_serializer: VideoCommentSerializer
  end

  private

  def resource
    @_resource ||= User.find(params[:user_id])
  end
end