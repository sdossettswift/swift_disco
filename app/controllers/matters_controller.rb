class MattersController < ApplicationController

  def new
    @matter = Matter.new
  end

  def index
    @matters = Matter.all
  end

  def create
    @matter = Matter.new
    @matter.cause_number = params[:matter][:cause_number]
    @matter.year = params[:matter][:year]
    @matter.client_id = params[:matter][:client_id]
    @matter.client = params[:matter][:client]
    @matter.attorney = params[:matter][:attorney]
    @matter.paralegal = params[:matter][:paralegal]
    @matter.kind = params[:matter][:kind]
    @matter.status = params[:matter][:status]
    @matter.opposing_party = params[:matter][:opposing_party]
    if @matter.save
        redirect_to root_path, notice: "Matter Added!"
    else render :new
    end
  end

  def show
    @matter = Matter.find_by id: params[:id]
  end

  def edit
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
   @matter.kind = params[:matter][:kind]
   @matter.opposing_party = params[:matter][:opposing_party]
   if @matter.save
       redirect_to root_path, notice: "Matter Updated!"
   else render :update
   end
 end

end
