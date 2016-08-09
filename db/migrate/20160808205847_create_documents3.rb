class CreateDocuments3 < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.string :description
      t.string :document_id
      t.string :category
      t.string :year
      t.string :month
      t.string :day
      t.text :client_notes
      t.text :attorney_notes
      t.text :law_office_notes
      t.references :matter, foreign_key: true
      t.boolean :hot_doc
      t.string :issues
      t.string :sort_date
    end
  end
end
