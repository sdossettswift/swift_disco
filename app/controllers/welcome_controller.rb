class WelcomeController < ApplicationController
  before_action except: :hello do
    if @current_user.nil?
      redirect_to sign_in_path, alert: "Please Sign In"
    end
  end

  def hello
    @user = User.find_by id: session[:user_id]
  end
end
