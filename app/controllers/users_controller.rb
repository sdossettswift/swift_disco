class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def index
    before_action do
      if @current_user.nil?
        redirect_to sign_in_path, alert: "Please Sign In"
      end
    end
    @users = User.all
  end


  def show
    before_action do
      if @current_user.nil?
        redirect_to sign_in_path, alert: "Please Sign In"
      end
    end
    @user = User.find_by id: params[:id]
  end

  def edit
    before_action do
      if @current_user.nil?
        redirect_to sign_in_path, alert: "Please Sign In"
      end
    end
    @user = User.find_by id: params[:id]
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
   @user.full_name = params[:user][:full_name]
   @user.dob = params[:user][:dob]
   @user.profile_image = params[:user][:profile_image]
   @user.password_confirmation = params[:user][:password_confirmation]
     if @user.save
       # we should also sign them in
       session[:user_id] = @user.id
       redirect_to root_path, notice: "Welcome!"
     else
       render :new
     end
   end

def update
  before_action do
    if @current_user.nil?
      redirect_to sign_in_path, alert: "Please Sign In"
    end
  end
  @user = User.find_by id: params[:id]
  @user.email = params[:user][:email]
  @user.role = params[:user][:role]
  @user.username = params[:user][:username]
  @user.password = params[:user][:password]
  @user.full_name = params[:user][:full_name]
  @user.first_name = params[:user][:first_name]
  @user.middle_name =params[:user][:middle_name]
  @user.last_name = params[:user][:last_name]
  @user.maiden_name = params[:user][:maiden_name]
  @user.dob = params[:user][:dob]
  @user.profile_image = params[:user][:profile_image]
    if @user.save
      redirect_to root_path, notice: "Profile Updated!"
    else
      render :edit
    end
end



  def profile
    @user = User.find_by id: params[:id]
  end
end
