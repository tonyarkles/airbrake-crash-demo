class SessionsController < ApplicationController
  protect_from_forgery except: :create

  def create
    user = User.from_omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to root_url, notice: "Signed in."
  end
end
