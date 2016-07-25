class AddColumnsToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :first_name, :string
    add_column :profiles, :middle_name, :string
    add_column :profiles, :last_name, :string
    add_column :profiles, :maiden_name, :string
    add_column :profiles, :gender, :string
    add_column :profiles, :dob, :string
  end
end
