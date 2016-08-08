class AddTitleToDocument < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :title, :string
  end
end
