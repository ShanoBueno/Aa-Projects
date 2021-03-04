class UsersController < ApplicationController

  def new
    @user = User.new 
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login!(@user)
      redirect_to users_url
    else
      flash.now[:errors] = @user.error.full_messages
      render :new
    
    end

  end

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end

  def index
    @users = User.all 
    render :index
  end

  def destroy
     @user = User.find_by(id: params[:id])
     @user.destroy
     redirect_to new_session_url

  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end

end
