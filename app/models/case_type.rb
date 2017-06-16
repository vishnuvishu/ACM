class CaseType < ActiveRecord::Base

	has_many :client_cases

	validates_presence_of :name, :code
end
