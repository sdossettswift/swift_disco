class AddYearToDocument < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :year, :string
  end
end
