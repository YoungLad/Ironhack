# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
sandwhich1 = Sandwhich.create(name: "BLT", bread_type: "white")
ingredient1 = Ingredient.create(name:"Bacon", calories:250)
ingredient2 = Ingredient.create(name: "Lettuce", calories:0)
ingredient3 = Ingredient.create(name: "Mayo", calories:200)

SandwhichIngredient.create(sandwhich_id: sandwhich1.id, ingredient_id: ingredient1.id)
SandwhichIngredient.create(sandwhich_id: sandwhich1.id, ingredient_id: ingredient2.id)