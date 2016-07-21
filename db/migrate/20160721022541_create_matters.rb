class CreateMatters < ActiveRecord::Migration[5.0]
  def change
    create_table :matters do |t|
      t.string :cause_number
      t.string :court
      t.string :issues

      t.timestamps
    end
  end
end
