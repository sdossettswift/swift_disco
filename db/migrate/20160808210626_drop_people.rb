class DropPeople < ActiveRecord::Migration[5.0]
  def change
    drop_table :people
  end
end
