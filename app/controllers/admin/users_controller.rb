class Admin::UsersController < ApplicationController
  before_action do
    if @current_user.role != "Admin"
      redirect_to root_path, alert: "You Must Be An Administrator To Access The Admin Portal"
    end
  end


    def new
      @user = User.new
    end

    def index
      @users = User.all
    end

    def show
      @user = User.find params[:id]
    end

    def edit
      @user = User.find params[:id]
    end


    def create
     @user = User.create(user_params)
       if @user.save
         redirect_to admin_dashboard_path, notice: "User Added!"
       else
         render :new
       end
     end


  def update
    @user = User.find params[:id]
    if @user.update(user_params)
        redirect_to admin_dashboard_path, notice: "User Updated!"
      else
        render :edit
      end
  end


    def profile
      @user = User.find params[:id]
    end

    def user_params
      params.require(:user).permit(:username, :email, :password_digest, :person_id, :first_name, :middle_name, :last_name, :full_name, :maiden_name, :gender, :role, :dob, :profile_image_id  )
    end
  end
