class AddColumnsToMatters < ActiveRecord::Migration[5.0]
  def change
      add_column :matters, :year, :string
      add_column :matters, :attorney, :string
      add_column :matters, :paralegal, :string
      add_column :matters, :client, :string
      add_column :matters, :client_id, :string
      add_column :matters, :type, :string
      add_column :matters, :opposing_party, :string
      add_column :matters, :opposing_counsel, :string
      add_column :matters, :judge, :string
  end
end
