class CreateFees < ActiveRecord::Migration
  def change
    create_table :fees do |t|
      t.integer :hearing_id
      t.integer :amount_paid
      t.datetime :fee_paid_date

      t.timestamps null: false
    end
  end
end
