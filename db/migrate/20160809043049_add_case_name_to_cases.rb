class AddCaseNameToCases < ActiveRecord::Migration[5.0]
  def change
    add_column :matters, :casename, :string
  end
end
