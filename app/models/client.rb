class Client < ActiveRecord::Base

	has_many :client_cases
	has_many :all_mobiles
	accepts_nested_attributes_for :all_mobiles, :allow_destroy => true


	validates_presence_of :name, :address, :pincode, :email, :primary_mobile
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates :primary_mobile, length: { is: 10 }

end
