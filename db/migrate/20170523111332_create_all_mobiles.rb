class CreateAllMobiles < ActiveRecord::Migration
  def change
    create_table :all_mobiles do |t|
      t.string :mobile
      t.integer :client_id

      t.timestamps null: false
    end
  end
end
