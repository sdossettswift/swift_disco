class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
   @user = User.new
   @user.email = params[:user][:email]
   @user.username = params[:user][:username]
   @user.password = params[:user][:password]
   @user.password_confirmation = params[:user][:password_confirmation]
   if @user.save
     # we should also sign them in
     session[:user_id] = @user.id
     redirect_to root_path, notice: "Welcome!"
   else
     render :new
   end
end
end
