class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      reset_session
      remember user
      log_in @user
      flash[:success] = "Welcome to Book ton Creneau!!"
      redirect_to @user
    else
      render 'new', status: :unprocessable_entity
    end
  end


   
  private
  
  def user_params
    params.require(:user).permit(:nom, :prenom, :email, :password, :password_confirmation)
  end
end
