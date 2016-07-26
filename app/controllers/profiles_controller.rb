class ProfilesController < ApplicationController

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new
    @profile.user_id = @current_user.id
    @profile.first_name = params[:profile][:first_name]
    @profile.middle_name = params[:profile][:middle_name]
    @profile.maiden_name = params[:profile][:maiden_name]
    @profile.last_name = params[:profile][:last_name]
    @profile.dob = params[:profile][:dob]
    @profile.gender = params[:profile][:gender]
    # @profile.first_name = params[:profile][:first_name]
    if @profile.save!
      redirect_to root_path, notice: "Profile Updated!"
    else
      render :new
    end
  end

  def edit
  end

end
