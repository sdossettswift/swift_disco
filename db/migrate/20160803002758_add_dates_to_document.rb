class AddDatesToDocument < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :month, :string
    add_column :documents, :day, :string
  end
end
