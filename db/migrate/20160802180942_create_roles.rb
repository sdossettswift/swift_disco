class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
        t.integer :user_id
        t.integer :matter_id
      t.timestamps
    end
  end
end
