class CreateAdvocates < ActiveRecord::Migration
  def change
    create_table :advocates do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.string :roll_no
      t.string :practicing_at

      t.timestamps null: false
    end
  end
end
