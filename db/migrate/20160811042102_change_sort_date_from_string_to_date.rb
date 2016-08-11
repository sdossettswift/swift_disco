class ChangeSortDateFromStringToDate < ActiveRecord::Migration[5.0]
  def change
    remove_column :documents, :sort_date
  end
end
