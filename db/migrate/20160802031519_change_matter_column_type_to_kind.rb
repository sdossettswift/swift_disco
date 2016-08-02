class ChangeMatterColumnTypeToKind < ActiveRecord::Migration[5.0]
  def change
    add_column :matters, :kind, :string
  end
end
