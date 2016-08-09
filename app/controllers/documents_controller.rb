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
    @document = Document.new(allowed_params)
    if @document.save
      redirect_to root_path, notice: "Document Added"
      else
        render :new
      end
  end

  def edit
    @document = Document.find_by id: params[:id]
  end

  def update
    @document = Document.find_by id: params[:id]
    @document.client_notes = params[:document][:client_notes]
    @document.attorney_notes = params[:document][:attorney_notes]
    @document.law_office_notes = params[:document][:law_office_notes]
    @document.description = params[:document][:description]
    @document.category = params[:document][:category]
    @document.status = params[:document][:status]
    @document.hot_doc = params[:document][:hot_doc]
    @document.year= params[:document][:year]
    @document.month = params[:document][:month]
    @document.day = params[:document][:day]
    @document.sort_date = params[:document][:sort_date]

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

  private

  def allowed_params
    params.require(:document).permit(:description, :document, :document_id, :matter_id, :description, :category, :year, :month, :day, :client_notes, :attorney_notes, :law_office_notes, :year, :hot_doc, :issues, :sort_date)
  end
end
