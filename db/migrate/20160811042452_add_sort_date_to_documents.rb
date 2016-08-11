class AddSortDateToDocuments < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :sort_date, :date
  end
end
