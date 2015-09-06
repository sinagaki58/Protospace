class Prototypes::CommentsController < ApplicationController

  before_action :set_prototype, only: :create

  def create
    current_user.comments.create(comment_params)
    @comments = @prototype.comments
  end

private

  def set_prototype
    @prototype = Prototype.find(comment_params[:prototype_id])
  end

  def comment_params
    params.require(:comment).permit(:text, :prototype_id)
  end

end
