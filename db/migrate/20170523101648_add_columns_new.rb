class AddColumnsNew < ActiveRecord::Migration
  def change
  	remove_column :advocates, :practicing_at, :string
  	remove_column :client_cases, :case_status, :boolean
  	add_column :client_cases, :case_status, :string
  	add_column :client_cases, :nature_of_case, :text
  	add_column :fees, :fee_comment, :text
  end
end
