class AddcolumnToClients < ActiveRecord::Migration
  def change
  	add_column :clients, :primary_mobile, :string
  end
end
