class LikesController < ApplicationController

  def create
    Like.create(create_params)
    redirect_to :back
  end

private

  def create_params
    params.permit(:prototype_id).merge(user_id: current_user.id)
  end
end
