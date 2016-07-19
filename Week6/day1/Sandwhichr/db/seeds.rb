# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
sandwhich1 = Sandwhich.create(name: "BLT", bread_type: "white")
sandwhich2 = Sandwhich.create(name: "Turkey", bread_type: "wheat")
sandwhich3 = Sandwhich.create(name: "Tuna", bread_type: "honeywhaet")
sandwhich4 = Sandwhich.create(name: "Ham", bread_type: "multi grain")
sandwhich5 = Sandwhich.create(name: "Roast-beef", bread_type: "white")

ingredient1 = Ingredient.create(name:"Bacon", calories:250)
ingredient2 = Ingredient.create(name: "Lettuce", calories:0)
ingredient3 = Ingredient.create(name: "Mayo", calories:200)
ingredient4 = Ingredient.create(name: "Turkey", calories:200)
ingredient5 = Ingredient.create(name: "Tuna", calories:200)
ingredient6 = Ingredient.create(name: "Ham", calories:200)
ingredient7 = Ingredient.create(name: "Beef", calories:200)


SandwhichIngredient.create(sandwhich_id: sandwhich1.id, ingredient_id: ingredient1.id)
SandwhichIngredient.create(sandwhich_id: sandwhich1.id, ingredient_id: ingredient2.id)
SandwhichIngredient.create(sandwhich_id: sandwhich2.id, ingredient_id: ingredient4.id)
SandwhichIngredient.create(sandwhich_id: sandwhich3.id, ingredient_id: ingredient5.id)
SandwhichIngredient.create(sandwhich_id: sandwhich4.id, ingredient_id: ingredient6.id)
SandwhichIngredient.create(sandwhich_id: sandwhich5.id, ingredient_id: ingredient7.id)