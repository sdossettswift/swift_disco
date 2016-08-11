class UserMattersController < ApplicationController
  before_action do
    if @current_user.nil?
      redirect_to sign_in_path, alert: "Please Sign In"
    end
  end



  def new
    @user_matter = UserMatter.new
  end

  def create
      @user_matter = UserMatter.new(user_matter_params)
      if @user_matter.save
      redirect_to dashboard_path
      else
        render :new
      end
    end


  def update
  end

  def index
    @user_matters = UserMatter.all
  end

private
  def user_matter_params
    params.require(:user_matter).permit(:matter_id, :full_name, :casename, :user_id, :user, :matter, :id)

  end
end
