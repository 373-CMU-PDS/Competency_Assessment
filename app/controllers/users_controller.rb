class UsersController < ApplicationController
  #Callback Methods
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.active.alphabetical
    @inactive_users = User.inactive.alphabetical
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Registration Successful"
      redirect_to "/"
    else
      render "new"
    end
  end

  def edit
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
