class DocumentsController < ApplicationController
  before_action except: :show do
    if @current_user.nil?
      redirect_to sign_in_path, alert: "Please Sign In"
    end
  end

  def show
    @document = Document.find_by id: params[:id]
  end

  def index
    @documents = Document.all
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new
    @document.caption = params[:document][:caption]
    @document.document = params[:document][:document]
    if @document.save
      redirect_to root_path, notice: "Document Added"
      else
        render :new
      end
  end

  def edit
    @document = @current_user.documents.find_by! id: params[:id]
  end

  def update
    @document = @current_user.documents.find_by! id: params[:id]
    @document.headline = params[:document][:headline]
    @document.text = params[:document][:text]
    @document.year = params[:document][:year]
    @document.month = params[:document][:month]
    @document.day = params[:document][:day]
    @document.hour = params[:document][:hour]
    @document.minute = params[:document][:minute]
    @document.caption = params[:document][:caption]
    @document.credit = params[:document][:credit]
    @document.url = params[:document][:url]
    @document.thumbnail = params[:document][:thumbnail]
    if @document.save
      redirect_to root_path, notice: "Document Updated!"
    else
      render :edit
    end
  end

  def delete
    @document = @current_user.documents.find_by! id: params[:id]
    @document.destroy
    redirect_to root_path, notice: "Document Deleted"
  end
end
