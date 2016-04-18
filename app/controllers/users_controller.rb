class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @comments = @user.comments
    @links = @user.links
  end

  def edit
  end

  def update
  end

  def create
    @user = User.create(user_params)

    redirect_to action: 'show', id: @user.id
  end

  def delete
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password_confirmation)
  end

  def authenticate!
    redirect_to(login_path) unless current_user
  end
end
