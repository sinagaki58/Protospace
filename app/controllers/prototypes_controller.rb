class PrototypesController < ApplicationController

  before_action :set_prototype, except: [:new, :create, :index]

  def index
    @prototypes = Prototype.order(created_at: :desc).page(params[:page])
  end

  def new
    @prototype = Prototype.new
    @prototype.thumbnails.build
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
    @comment = Comment.new
    @comments = @prototype.comments
  end

  private
  def create_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :user_id, thumbnails_attributes: [:name, :prototype_id, :status]).merge(tag_list: params[:prototype][:tag])
  end

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end
end
