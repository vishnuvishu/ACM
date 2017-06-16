class AddCourthallFromClientcases < ActiveRecord::Migration
  def change
  	add_column :client_cases, :court_hall, :string 
  end
end
