class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
   @user = User.new
   @user.email = params[:user][:email]
   @user.role = params[:user][:role]
   @user.username = params[:user][:username]
   @user.password = params[:user][:password]
   @user.first_name = params[:user][:first_name]
   @user.middle_name = params[:user][:middle_name]
   @user.last_name = params[:user][:last_name]
   @user.maiden_name = params[:user][:maiden_name]
   @user.dob = params[:user][:dob]
   @user.password_confirmation = params[:user][:password_confirmation]
   if @user.save
     # we should also sign them in
     session[:user_id] = @user.id
     redirect_to root_path, notice: "Welcome!"
   else
     render :new
   end
end

def show_profile
  @user = User.find_by id: params[:id]

end

def profile
  @user.first_name = params[:user][:first_name]
  @user.middle_name = params[:user][:middle_name]
  @user.last_name = params[:user][:last_name]
  @user.maiden_name = params[:user][:maiden_name]
  @user.dob = params[:user][:dob]
  @user.gender = params [:user][:gender]
  @user.role = params [:user][:role]
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
