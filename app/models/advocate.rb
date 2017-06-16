class Advocate < ActiveRecord::Base
	has_many :client_cases
	has_many :hearings

	validates_presence_of :name, :email, :mobile, :roll_no
	validates_numericality_of :mobile
	validates :mobile, length: { is: 10 }
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

end
