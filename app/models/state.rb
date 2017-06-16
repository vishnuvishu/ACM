class State < ActiveRecord::Base

	has_many :districts
	has_many :client_cases
	
	belongs_to :hearing

	validates_presence_of :name
end
