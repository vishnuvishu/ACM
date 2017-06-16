class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.text :address
      t.string :pincode
      t.string :email
      t.string :mobile

      t.timestamps null: false
    end
  end
end
