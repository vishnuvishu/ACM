class CourtComplex < ActiveRecord::Base

	belongs_to :district
	belongs_to :state
	
	has_many :client_cases

	validates_presence_of :name, :state_id, :district_id
	
end
