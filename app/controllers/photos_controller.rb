class PhotosController < ApplicationController
  before_action except: :show do
    if @current_user.nil?
      redirect_to sign_in_path, alert: "Please Sign In"
    end
  end

  def show
    @photo = Photo.find_by id: params[:id]
  end

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new
    @photo.caption = params[:photo][:caption]
    @photo.photo = params[:photo][:photo]
    if @photo.save
      redirect_to root_path, notice: "Photo Added"
      else
        render :new
      end
  end

  def edit
    @photo = @current_user.photos.find_by! id: params[:id]
  end

  def update
    @photo = @current_user.photos.find_by! id: params[:id]
    @photo.headline = params[:photo][:headline]
    @photo.text = params[:photo][:text]
    @photo.year = params[:photo][:year]
    @photo.month = params[:photo][:month]
    @photo.day = params[:photo][:day]
    @photo.hour = params[:photo][:hour]
    @photo.minute = params[:photo][:minute]
    @photo.caption = params[:photo][:caption]
    @photo.credit = params[:photo][:credit]
    @photo.url = params[:photo][:url]
    @photo.thumbnail = params[:photo][:thumbnail]
    if @photo.save
      redirect_to root_path, notice: "Photo Updated!"
    else
      render :edit
    end
  end

  def delete
    @photo = @current_user.photos.find_by! id: params[:id]
    @photo.destroy
    redirect_to root_path, notice: "Photo Deleted"
  end
  end
