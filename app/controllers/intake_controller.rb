class IntakeController < ApplicationController
  before_action  do
    if @current_user.nil?
      redirect_to sign_in_path, alert: "Please Sign In"
    end
  end

  def case_analysis
    @matter = Matter.find_by id: params[:id]
  end
end
