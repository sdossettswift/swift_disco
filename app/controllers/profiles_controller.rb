class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new params.require(:profile).permit(:first_name, :middle_name, :maiden_name, :last_name, :dob, :gender =>[])
    if @profile.save
      redirect_to root_path, notice: "Profile Updated!"
    else
      render :new
    end
  end

  def edit
  end
end
