class CreateUserMatters < ActiveRecord::Migration[5.0]
  def change
    create_table :user_matters do |t|
      t.references :user, foreign_key: true
      t.references :matter, foreign_key: true

      t.timestamps
    end
  end
end
