class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :event_type
      t.string :event_description
      t.datetime :datetime

      t.timestamps
    end
  end
end
