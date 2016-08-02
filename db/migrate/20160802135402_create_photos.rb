class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :photo_id
      t.string :caption

      t.timestamps
    end
  end
end
