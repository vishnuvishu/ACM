class Fee < ActiveRecord::Base

	belongs_to :hearing

	validates_presence_of :amount_paid, :fee_paid_date, :fee_comment
	validates_numericality_of :amount_paid
end
