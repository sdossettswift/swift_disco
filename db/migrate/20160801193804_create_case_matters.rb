class CreateCaseMatters < ActiveRecord::Migration[5.0]
  def change
    create_table :case_matters do |t|
      t.string :cause_number
      t.string :year
      t.string :client_id
      t.string :client
      t.string :attorney
      t.string :paralegal
      t.string :type
      t.string :opposing_party
      t.timestamps
    end
  end
end
