class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name_first
      t.string :name_last
      t.string :name_middle
      t.string :dob
      t.string :gender
      t.string :roles

      t.timestamps
    end
  end
end
