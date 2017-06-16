class RemoveColumnnFromHearings < ActiveRecord::Migration
  def change
  	remove_column :hearings, :case_id, :integer
  	add_column :hearings, :client_case_id, :integer
  end
end
