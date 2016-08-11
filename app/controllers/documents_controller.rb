class DocumentsController < ApplicationController
    before_action do
        redirect_to sign_in_path, alert: 'Please Sign In' if @current_user.nil?
    end

    def show
        @document = Document.find_by id: params[:id]
    end

    def index
        @documents = @current_user.documents
    end

    def new
        @document = Document.new
    end

    def create
        @document = Document.new(document_params)
        if @document.save
            redirect_to dashboard_path, notice: 'Document Added'
        else
            render :new
          end
    end

    def edit
        @document = Document.find_by id: params[:id]
    end

    def update
        @document = Document.find_by id: params[:id]

        if @document.update(params.require(:document).permit(:description, :title,  :document, :document_id, :matter_id, :description, :category, :year, :month, :day, :client_notes, :attorney_notes, :law_office_notes, :year, :hot_doc, :issues, :sort_date))
            redirect_to document_path(id: @document.id), notice: 'Document Updated!'
        else
            render :edit
       end
    end

    def upload
        @document = Document.find_by id: params[:id]

        if @document.update(params.require(:document).permit(:description, :title, :document, :document_id, :matter_id, :description, :category, :year, :month, :day, :client_notes, :attorney_notes, :law_office_notes, :year, :hot_doc, :issues, :sort_date))
            redirect_to document_path(id: @document.id), notice: 'Document Uploaded!'
        else
            render :edit
       end
    end

    def delete
        @document = @current_user.documents.find_by! id: params[:id]
        @document.destroy
        redirect_to root_path, notice: 'Document Deleted'
    end

    private

    def document_params
        params.require(:document).permit(:description, :document, :document_id, :matter_id, :description, :category, :year, :month, :day, :client_notes, :attorney_notes, :law_office_notes, :year, :hot_doc, :issues, :sort_date)
    end
end
