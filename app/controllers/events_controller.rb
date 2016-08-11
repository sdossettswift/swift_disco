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
    @events = @current_user.events

  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
    redirect_to event_path(id: @event.id), notice: "Event Added"
      else
        render :new
      end
  end


  def edit
    @event = Event.find_by! id: params[:id]
  end

  def update
    @event = Event.find_by! id: params[:id]
    if @event.update(event_params)
      redirect_to event_path(id: @event.id), notice: "Event Updated!"
    else
      render :edit
    end
  end

  def delete
    @event = @current_user.events.find_by! id: params[:id]
    @event.destroy
    redirect_to root_path, notice: "Event Deleted"
  end

  def event_params
    params.require(:event).permit(:headline, :text, :year, :month, :day, :hour, :minute, :caption, :credit, :url, :thumbnail, :matter_id)
  end

end
