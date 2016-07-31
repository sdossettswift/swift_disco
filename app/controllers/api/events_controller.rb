class Api::EventsController < ApplicationController
  # before_action :doorkeeper_authorize!

  before_action do
    request.format = :json
  end

  protect_from_forgery with: :null_session

  def new
    @event = Event.new
  end

  def create
    @event = Event.new
    @event.headline = params[:event][:headline]
    @event.text = params[:event][:text]
    @event.year = params[:event][:year]
    @event.month = params[:event][:month]
    @event.day = params[:event][:day]
    @event.hour = params[:event][:hour]
    @event.minute = params[:event][:minute]
    @event.caption = params[:event][:caption]
    @event.credit = params[:event][:credit]
    @event.thumbnail = params[:event][:thumbnail]
    if @event.save
        redirect_to root_path, notice: "Event Added!"
    else render :new
  end
end

  def index
    @events= Event.all
  end

  def show
    @event = Event.find_by id: params[:id]
  end

  def update
   @event = Event.find_by id: params[:id]
   @event.headline = params[:event][:headline]
   @event.text = params[:event][:text]
   @event.year = params[:event][:year]
   @event.month = params[:event][:month]
   @event.day = params[:event][:day]
   @event.hour = params[:event][:hour]
   @event.minute = params[:event][:minute]
   @event.caption = params[:event][:caption]
   @event.credit = params[:event][:credit]
   @event.thumbnail = params[:event][:thumbnail]

     if @event.save
       render :show, status: 200 #created
     else
       render json: {errors: @event.errors}, status: 422 #error
     end
   end

 def delete
   @event = Event.find_by id: params[:id]
   @event.destroy
   render json: {ok: true}, status: 200
 end

end
