class Admin::UsersController < ApplicationController

    def new
      @user = User.new
    end

    def index
      @users = User.all
    end

    def show
      @user = User.find_by id: params[:id]
    end

    def edit
      @user = User.find_by id: params[:id]
    end


    def create
     @user = User.create(user_params)
       if @user.save
         redirect_to root_path, notice: "User Added!"
       else
         render :new
       end
     end


  def update
    @user = User.find_by id: params[:id]
    if @user.update(user_params)
        redirect_to root_path, notice: "User Updated!"
      else
        render :edit
      end
  end


    def profile
      @user = User.find_by id: params[:id]
    end

    def user_params
      params.require(:user).permit(:username, :email, :password_digest, :person_id, :first_name, :middle_name, :last_name, :full_name, :maiden_name, :gender, :role, :dob, :profile_image_id  )

    end
  end
