class SandwhichIngredient < ActiveRecord::Base
	belongs_to :ingredient
	belongs_to :sandwhich
end
