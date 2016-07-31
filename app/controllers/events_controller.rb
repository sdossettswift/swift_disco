class EventsController < ApplicationController

  before_action except: :show do
    if @current_user.nil?
      redirect_to sign_in_path, alert: "Please Sign In"
    end
  end

  def show
    @event = Event.find_by id: params[:id]
  end

  def index
    @events = Event.all
  end

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
    @event.url = params[:event][:url]
    @event.thumbnail = params[:event][:thumbnail]

    if @event.save
      redirect_to root_path, notice: "Event Added"
      else
        render :new
      end
  end

  def edit
    @event = @current_user.events.find_by! id: params[:id]
  end

  def update
    @event = @current_user.events.find_by! id: params[:id]
    @event.headline = params[:event][:headline]
    @event.text = params[:event][:text]
    @event.year = params[:event][:year]
    @event.month = params[:event][:month]
    @event.day = params[:event][:day]
    @event.hour = params[:event][:hour]
    @event.minute = params[:event][:minute]
    @event.caption = params[:event][:caption]
    @event.credit = params[:event][:credit]
    @event.url = params[:event][:url]
    @event.thumbnail = params[:event][:thumbnail]
    if @event.save
      redirect_to root_path, notice: "Event Updated!"
    else
      render :edit
    end
  end

  def delete
    @event = @current_user.events.find_by! id: params[:id]
    @event.destroy
    redirect_to root_path, notice: "Event Deleted"
  end
end
