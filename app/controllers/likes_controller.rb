class LikesController < ApplicationController

  def create
    current_user.likes.create(create_params)
  end

private

  def create_params
    params.permit(:prototype_id)
  end
end
