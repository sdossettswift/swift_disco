class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :maiden_name
      t.string :gender
      t.date :dob
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
