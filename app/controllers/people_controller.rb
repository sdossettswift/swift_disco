class PeopleController < ApplicationController

  before_action except: :show do
    if @current_user.nil?
      redirect_to sign_in_path, alert: "Please Sign In"
    end
  end

  def show
    @person = Person.find_by id: params[:id]
  end

  def index
    @people = @current_user.people
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to dashboard_path, notice: "Person Added"
      else
        render :new
      end
  end

  def edit
    @person = Person.find_by id: params[:id]
  end

  def update
    @person = Person.find_by id: params[:id]

     if @person.update(person_params)
      redirect_to person_path(id: @person.id), notice: "Person Updated!"
    else
      render :edit
    end
  end


  def delete
    @person = @current_user.people.find_by! id: params[:id]
    @person.destroy
    redirect_to root_path, notice: "Person Deleted"
  end

  private

  def person_params
    params.require(:person).permit(:first_name, :last_name, :dob, :gender, :attorney_notes, :client_notes, :law_office_notes, :details, :address1, :address2, :city, :state, :email, :phone, :matter_id)
  end
end
