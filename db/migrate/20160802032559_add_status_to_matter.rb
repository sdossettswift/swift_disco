class AddStatusToMatter < ActiveRecord::Migration[5.0]
  def change
    add_column :matters, :status, :string
  end
end
