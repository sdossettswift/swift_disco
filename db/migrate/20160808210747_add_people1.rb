class AddPeople1 < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :gender
      t.text :attorney_notes
      t.text :client_notes
      t.text :law_office_notes
      t.text :details
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :email
      t.string :phone
      t.references :matter, foreign_key: true
    end

  end
end
