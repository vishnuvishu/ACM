class CreateHearings < ActiveRecord::Migration
  def change
    create_table :hearings do |t|
      t.datetime :date_of_hearing
      t.integer :advocate_id
      t.text :case_status
      t.integer :case_id
      t.integer :amount

      t.timestamps null: false
    end
  end
end
