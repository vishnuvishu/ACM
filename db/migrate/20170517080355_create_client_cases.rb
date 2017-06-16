class CreateClientCases < ActiveRecord::Migration
  def change
    create_table :client_cases do |t|
      t.string :name
      t.integer :client_id
      t.string :case_number
      t.integer :case_type_id
      t.integer :court_hall_id
      t.integer :court_complex_id
      t.integer :case_year
      t.integer :advocate_id
      t.string :file_no
      t.integer :state_id
      t.integer :district_id
      t.boolean :case_status

      t.timestamps null: false
    end
  end
end
