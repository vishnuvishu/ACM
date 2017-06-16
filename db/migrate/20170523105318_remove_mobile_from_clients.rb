class RemoveMobileFromClients < ActiveRecord::Migration
  def change
  	remove_column :clients, :mobile, :string
  end
end
