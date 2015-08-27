class PrototypesController < ApplicationController

  def new
    @prototype = Prototype.new
  end

  def create
    Prototype.create(create_params)
    redirect_to root_path
  end

  def show
    @prototype = Prototype.find(params[:id])
  end

  private
  def create_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :user_id).merge(user_id: current_user.id)
  end
end
