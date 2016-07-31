class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :headline
        t.string :text
        t.string :year
        t.string :month
        t.string :day
        t.string :hour
        t.string :minute
        t.string :caption
        t.string :credit
        t.string :url
        t.string :thumbnail

        t.timestamps
    end
  end
end
