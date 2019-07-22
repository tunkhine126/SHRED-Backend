class CommentsController < ApplicationController

  def index
    @comment =Comment.all
    render json: @comment
  end
  
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comments_params)
    render json: @comment
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def destroy
    Comment.find(params[:id]).destroy
    flash[:success] = "Comment deleted"
  end

  def show
    @comment = Comment.find(params[:id])
    render json: ShowSerializer.new(@show)
  end
  
  private
  def comment_params
    params.require(:comment).permit(:user_id, :ride_id, :comment, :created_at)
  end
end
