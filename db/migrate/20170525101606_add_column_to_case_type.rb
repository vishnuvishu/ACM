class AddColumnToCaseType < ActiveRecord::Migration
  def change
  	add_column :case_types, :code, :string
  end
end
