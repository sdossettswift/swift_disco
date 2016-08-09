class MatterController < ApplicationController

  def new
    @matters = Matter.new
  end

  def create
    @matters = Matter.new
    @matters.cause_number = params[:matter][:cause_number]
    @matters.year = params[:matter][:year]
    @matters.client_id = params[:matter][:client_id]
    @matters.client = params[:matter][:client]
    @matters.attorney = params[:matter][:attorney]
    @matters.paralegal = params[:matter][:paralegal]
    @matters.type = params[:matter][:type]
    @matters.opposing_party = params[:matter][:opposing_party]

    if @matter.save
        redirect_to root_path, notice: "Matter Added!"
    else render :new
    end
  end

  def index
    @matter = Matter.all
  end

  def show
    @matter = Matter.find_by id: params[:id]
  end

  def update
   @matter = Matter.find_by id: params[:id]
   @matter.cause_number = params[:matter][:cause_number]
   @matter.year = params[:matter][:year]
   @matter.client_id = params[:matter][:client_id]
   @matter.client = params[:matter][:client]
   @matter.attorney = params[:matter][:attorney]
   @matter.paralegal = params[:matter][:paralegal]
   @matter.type = params[:matter][:type]
   @matter.opposing_party = params[:matter][:opposing_party]
   if @matter.save
       redirect_to root_path, notice: "Matter Updated!"
   else render :update
   end
 end

end
