class AddColumnToCases < ActiveRecord::Migration
  def change
  	remove_column :cases, :advocatte_id, :integer
  	add_column :cases, :advocate_id, :integer
  end
end
