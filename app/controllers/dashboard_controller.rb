class DashboardController < ApplicationController
  def show
    @users = User.all
    @matters = Matter.all
    @user_matters = UserMatter.all
    @documents = Document.all
    @events = Event.all
  end
end
