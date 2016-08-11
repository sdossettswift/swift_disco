class PhotosController < ApplicationController
    before_action except: :show do
      if @current_user.nil?
        redirect_to sign_in_path, alert: "Please Sign In"
      end
    end

    def show
      @photo = Photo.find_by id: params[:id]
    end

    def new
      @photo = Photo.new
    end

    def index
      @photos = @current_user.photos
    end

    def create
      @photo = Photo.new(photo_params)
      if @photo.save
        redirect_to photo_path(id: @photo.id), notice: "Photo Added"
        else
          render :new
        end
    end

    def edit
      @photo = Photo.find_by! id: params[:id]
    end

    def update
      @photo = Photo.find_by! id: params[:id]
      if @photo.update(photo_params)
        redirect_to photo_path(id: @photo.id), notice: "Photo Updated!"
      else
        render :edit
      end
    end

    def delete
      @photo = @current_user.photos.find_by! id: params[:id]
      @photo.destroy
      redirect_to root_path, notice: "Photo Deleted"
    end

    def photo_params
      params.require(:photo).permit(:headline, :text, :year, :month, :day, :hour, :minute, :caption, :credit, :url, :thumbnail, :matter_id)
    end

  end
