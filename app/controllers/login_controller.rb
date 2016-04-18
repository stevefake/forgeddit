class LoginController < ApplicationController
  def new
    # redirect_to root_path
  end

  def create
    @user = User.find_by(email: user_params[:email])
    if @user && @user.password == user_params[:password]
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end

  def user_params
    params.permit(:name, :email, :password)
  end
end
