class UsersController < ApplicationController
  
  def login
  end
  def new
    user = User.new
    
  end
  def create
  	user = User.new(user_params)
    respond_to do |format|
  	if @user.save
      format.html { redirect_to users_url, notice: 'User Created Successfully..!'}
    else
      render 'new'
end
end
end
private
  def user_params
    params.require(:user).permit(:email, :password_digest)
  end
  end
