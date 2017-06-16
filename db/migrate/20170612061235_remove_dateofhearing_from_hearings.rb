class RemoveDateofhearingFromHearings < ActiveRecord::Migration
  def change
  	 remove_column :hearings, :date_of_hearing, :date_time
  	 add_column :hearings, :date_of_hearing, :date
  end
end
