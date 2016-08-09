class DropCaseMatters < ActiveRecord::Migration[5.0]
  def change
    drop_table :case_matters 
  end
end
