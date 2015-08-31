class PrototypesController < ApplicationController

  before_action :set_prototype, except: [:new, :create]

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = current_user.prototypes.new(create_params)
    if @prototype.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  private
  def create_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :user_id).merge(tag_list: params[:prototype][:tag])
  end

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end
end
