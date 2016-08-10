class Api::MattersController < ApplicationController
  protect_from_forgery with: :null_session

  before_action do
    request.format = :json
  end

  def new
    @matters = Matter.new
  end

  def create
    @matters = Matter.create(params[:matter])

    if @matters.save
      render :show, status: 200 #created
    else render :new
  end
  end

  def index
    @matters= Matter.all
  end

  def show
    @matters = Matter.find_by id: params[:id]
    @events = @matters.events.all
  end


  def timeline
    @matters = Matter.find_by id: params[:id]
    @events = @matters.events.all
  end

  def update
   @matters = Matter.find_by id: params[:id]
     if @matters.update
       render :show, status: 200 #created
     else
       render json: {errors: @matters.errors}, status: 422 #error
     end
   end

  def delete
   @matters = Matter.find_by id: params[:id]
   @matters.destroy
   render json: {ok: true}, status: 200
  end

  def matter_params
      params.require(:matter).permit(:matter_id, :id, :matter)
    end

  end
