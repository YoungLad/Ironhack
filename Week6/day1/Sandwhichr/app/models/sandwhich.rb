class Sandwhich < ActiveRecord::Base
	has_many :sandwhich_ingredients
	has_many :ingredients, through:"sandwhich_ingredients"
end
