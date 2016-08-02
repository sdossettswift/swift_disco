class RemoveTypeFromMatters < ActiveRecord::Migration[5.0]
    def change
      remove_column :matters, :type
    end
  end
