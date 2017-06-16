class AllMobile < ActiveRecord::Base
	belongs_to :client

	validates_presence_of :mobile
	validates_numericality_of :mobile
end
