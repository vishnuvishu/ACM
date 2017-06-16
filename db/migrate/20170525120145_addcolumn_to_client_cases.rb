class AddcolumnToClientCases < ActiveRecord::Migration
  def change
  	remove_column :client_cases, :case_year, :integer
  	add_column :client_cases, :case_year, :string
  end
end
