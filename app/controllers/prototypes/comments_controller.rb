class Prototypes::CommentsController < ApplicationController

  def create
    current_user.comments.create(comment_params)
    @prototype = Prototype.find(params[:id])
    @comments = @prototype.comments
  end

private
  def comment_params
    params.require(:comment).permit(:text, :prototype_id, :user_id)
  end

end
