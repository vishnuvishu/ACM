class Hearing < ActiveRecord::Base

	belongs_to :client_case
	belongs_to :advocate

	has_many :fees
	has_many :states
	has_many :districts 

	validates_presence_of :date_of_hearing, :advocate_id, :case_status, :client_case_id, :amount
	validates_numericality_of :amount

	def hearing_date
		self.date_of_hearing.strftime("%Y-%m-%d") if self.date_of_hearing.present?
	end
end
