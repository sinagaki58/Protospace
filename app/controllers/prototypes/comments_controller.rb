class Prototypes::CommentsController < ApplicationController

  def create
    current_user.comments.create(comment_params)
    @prototype = Prototype.find(comment_params[:prototype_id])
    @comments = @prototype.comments
    @comment_count = @comments.count
  end

private
  def comment_params
    params.require(:comment).permit(:text, :prototype_id, :user_id)
  end

end
