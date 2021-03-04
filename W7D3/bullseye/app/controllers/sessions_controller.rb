class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    
    user = User.find_by_credentials(params[:user][:email], params[:user][:password])
    if user.nil?
      flash.now[:errors] = ["Invalid Credentials"]
      render :new
    else 
      login!(user)
      session[:session_token] = user.session_token
      redirect_to users_url
    end

      
  end

  def destroy
    logout!
    redirect_to new_session_url 
  end



end
