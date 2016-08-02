class IntakeController < ApplicationController
  def case_analysis
    @matter = Matter.find_by id: params[:id]
  end
end
