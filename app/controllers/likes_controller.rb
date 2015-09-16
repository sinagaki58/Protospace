class LikesController < ApplicationController

  def create
    Like.create(create_params)
    count = Like.where(prototype_id: params[:prototype_id]).count
    render json: { count: count }
  end

  def destroy
    like = Like.find_by(prototype_id: params[:prototype_id], user_id: current_user.id)
    like.destroy
    count = Like.where(prototype_id: params[:prototype_id]).count
    render json: { count: count }
  end

private

  def create_params
    params.permit(:prototype_id).merge(user_id: current_user.id)
  end
end
