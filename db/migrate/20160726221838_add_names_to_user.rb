class AddNamesToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :middle_name, :string
    add_column :users, :last_name, :string
    add_column :users, :maiden_name, :string
  end
end
