class MattersController < ApplicationController
  before_action except: :new do
    if @current_user.nil?
      redirect_to sign_in_path, alert: "Please Sign In"
    end
  end

  def new
    @matters = Matter.new
  end

  def index
    @matters = @current_user.matters.all
  end

  def create
    @matters = Matter.new
    @matters.cause_number = params[:matter][:cause_number]
    @matters.casename = params[:matter][:casename]
    @matters.year = params[:matter][:year]
    @matters.client_id = params[:matter][:client_id]
    @matters.client = params[:matter][:client]
    @matters.attorney = params[:matter][:attorney]
    @matters.paralegal = params[:matter][:paralegal]
    @matters.kind = params[:matter][:kind]
    @matters.status = params[:matter][:status]
    @matters.opposing_party = params[:matter][:opposing_party]
    @matters.opposing_counsel = params[:matter][:opposing_counsel]
    @matters.judge = params[:matter][:judge]
    @matters.court = params[:matter][:court]
    if @matters.save
        redirect_to root_path, notice: "Matter Added!"
    else render :new
    end
  end

  def timeline
    @matters = Matter.find_by id: params[:id]
    @events = @matters.events.all
  end

  def show
    @matters = Matter.find_by id: params[:id]
    @user_matter = UserMatter.new
    @users = @matters.users.all
    @events = @matters.events.all
    @documents = @matters.documents.all
    @people = @matters.people.all
    @photos = @matters.photos.all

    @client = @matters.users.by_role("Client")
    @attorney = @matters.users.by_role("Attorney")
    @paralegal = @matters.users.by_role("Law Office")
end

  def edit
    @matters = Matter.find_by id: params[:id]
  end

  def update
     @matters = Matter.find_by id: params[:id]
     @matters.cause_number = params[:matter][:cause_number]
     @matters.casename = params[:matter][:casename]
     @matters.year = params[:matter][:year]
     @matters.client_id = params[:matter][:client_id]
     @matters.client = params[:matter][:client]
     @matters.attorney = params[:matter][:attorney]
     @matters.paralegal = params[:matter][:paralegal]
     @matters.kind = params[:matter][:kind]
     @matters.opposing_party = params[:matter][:opposing_party]
     @matters.opposing_counsel = params[:matter][:opposing_counsel]
     @matters.judge = params[:matter][:judge]
     @matters.court = params[:matter][:court]
     @matters.status = params[:matter][:status]
     if @matter.update
         redirect_to dashboard_path, notice: "Matter Updated!"
     else render :update
     end
 end

end
