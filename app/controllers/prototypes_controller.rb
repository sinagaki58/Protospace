class PrototypesController < ApplicationController

  before_action :set_prototype, except: [:new, :create]

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = current_user.prototypes.new(create_params)
    @prototype.tag_list.add("#{params[:prototype][:tag1]}", "#{params[:prototype][:tag2]}", "#{params[:prototype][:tag3]}")
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
    params.require(:prototype).permit(:title, :catch_copy, :concept, :user_id, :prototype_list)
  end

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end
end
