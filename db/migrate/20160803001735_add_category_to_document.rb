class AddCategoryToDocument < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :category, :string
  end
end
