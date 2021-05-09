class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      redirect_to request.referrer
    else
      flash[:alert] = @comment.errors.full_messages
      redirect_to request.referrer
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:rating, :body, :image_id)
  end
end
