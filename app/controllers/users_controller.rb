class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes.page(params[:page])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    current_user.update(update_params)
    redirect_to root_path
  end

  private
  def update_params
    params.require(:user).permit(:user_name, :email, :member, :profile, :works, :avatar)
  end
end
