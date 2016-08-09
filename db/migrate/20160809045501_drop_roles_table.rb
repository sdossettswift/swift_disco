class DropRolesTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :roles
  end
end
