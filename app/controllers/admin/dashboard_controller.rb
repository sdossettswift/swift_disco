class Admin::DashboardController < ApplicationController
  before_action do
    if @current_user.role != "Admin"
      redirect_to root_path, alert: "You Must Be An Administrator To Access The Admin Portal"
    end
  end

  def show
  end
end
