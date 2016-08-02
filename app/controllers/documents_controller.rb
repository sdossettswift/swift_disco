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
    @document = @current_user.documents.find_by! id: params[:id]
  end

  def update
    @document = @current_user.documents.find_by! id: params[:id]
    @document.headline = params[:document][:description]
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
    params.require(:document).permit(:description, :document)
  end
end
