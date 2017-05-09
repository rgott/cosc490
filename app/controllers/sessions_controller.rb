class SessionsController < ApplicationController
  skip_before_action :authorize
  skip_before_filter :verify_authenticity_token
  def new
  end

  def create
    user = User.find_by_email(email: params[:name])
    if user and user.authenticate(params[:password])
      sessions[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url, alert:"Invalid Email or Password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, alert:'Successfully logged out'
  end
end
