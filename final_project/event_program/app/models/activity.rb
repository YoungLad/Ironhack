class Activity < ActiveRecord::Base
	belongs_to :location
	# acts_as_mappable :through => :location
end