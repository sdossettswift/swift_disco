class Admin::UserMattersController < ApplicationController

    def new
      @user_matter = UserMatter.new
    end

    def create
      @user_matter = UserMatter.create(user_matter_params)
      if @user_matter.save
      redirect_to admin_dashboard_path
      else
        render :new
      end
    end


    def update
      @user_matter = UserMatter.find params[:id]
      if @user_matter.update(user_matter_params)
        redirect_to admin_user_matters_path
      else
        render :new
      end
    end

    def index
      @user_matters = UserMatter.all
    end

  private
    def user_matter_params
      params.require(:user_matter).permit(:matter_id, :full_name, :casename, :user_id, :user, :matter, :id)
    end

end
