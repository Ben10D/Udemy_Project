class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.find_by(email: params[:user][:email])
  	if @user && @user.authenticate(params[:user][:password])
  		session[:user_id] = @user.id
  		redirect_to @article
  		else
  			redirect_to @user, alert:'Invalid Username or password'
  	end
  end

  def destroy
  end
end
