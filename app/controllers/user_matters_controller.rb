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
    @user_matter = UserMatter.find_by id: params[:id]
      if @user_matter.update(user_matter_params)
          redirect_to dashboard_path(id: @user_matter.id), notice: 'User-Matter Updated!'
      else
          render :edit
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
