class AddDataToDocument < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :client_notes, :text
    add_column :documents, :attorney_notes, :text
    add_column :documents, :law_office_notes, :text
    add_column :documents, :hot_doc, :boolean
    add_column :documents, :issues, :string
    add_column :documents, :sort_date, :date
  end
end
