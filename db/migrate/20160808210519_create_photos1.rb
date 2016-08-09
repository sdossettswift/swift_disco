class CreatePhotos1 < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :photo_id
      t.string :caption
      t.date :sort_date
      t.references :matter, foreign_key: true
    end
  end
end
