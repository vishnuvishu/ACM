class District < ActiveRecord::Base

	belongs_to :state
	belongs_to :hearing

	has_many :court_complexes
	has_many :client_cases

	validates_presence_of :name, :state_id
end
