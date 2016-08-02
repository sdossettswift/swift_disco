class AddDocumentIdToDocument < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :document_id, :string

  end
end
