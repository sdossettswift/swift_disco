class AddUsernameAndCasenametoUserMatters < ActiveRecord::Migration[5.0]
  def change
        add_column :user_matters, :casename, :string
        add_column :user_matters, :full_name, :string
  end
end
