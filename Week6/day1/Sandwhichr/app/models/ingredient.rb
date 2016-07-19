class Ingredient < ActiveRecord::Base
	has_many :sandwhich_ingredients
	has_many :sandwhiches, through:"sandwhich_ingredients"
end
