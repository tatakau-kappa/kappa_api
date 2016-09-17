class Videos::CommentsController < ApplicationController
  def index
    render json: resource.comments
  end

  def create
    comment = resource.video_comments.create!(user: current_user, contents: params[:contents])

    render json: comment, status: :created
  end

  private

  def resource
    scope = Video.all
    @_resource ||= (block_given? ? yield(scope) : scope).find(params[:video_id])
  end
end