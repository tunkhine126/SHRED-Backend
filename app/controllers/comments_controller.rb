class CommentsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @ride = Ride.find(params[:ride_id])
    @comment = @user.ride.comments.create(comments_params)
    redirect_to 
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def destroy
    Comment.find(params[:id]).destroy
    flash[:success] = "Comment deleted"
  end
  
  private
  def comment_params
    params.require(:comment).permit(:user_id, :ride_id, :comment, :created_at)
  end
end
