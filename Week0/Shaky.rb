class Shack
	def initialize
		@menu = []
	end

	def add_milkshake(shakes)
		@menu.push(shakes)

	end

	def printshakes
		@menu.each do |m|
			puts m.flavor
			puts m.price_of_milkshake
	end
	end

end

class MilkShake
	attr_reader :flavor
  def initialize(flavor)
    @base_price = 3
    @ingredients = [ ]
    @flavor = flavor    
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end
  def price_of_milkshake
	  #Let's establish what our counter should be before we start adding ingredients into the mix
	  total_price_of_milkshake = @base_price
	  #Add each ingredients price to our total
	  @ingredients.each do |ingredient|
	    total_price_of_milkshake += ingredient.price
	  end
	  #return  our total price to whoever called for it
	   total_price_of_milkshake
	end
end

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end

nizars_milkshake = MilkShake.new("special")
young_Lad_shake = MilkShake.new("Best")
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
strawberry = Ingredient.new("Strawberries", 3)
young_Lad_shake.add_ingredient(strawberry)
young_Lad_shake.add_ingredient(chocolate_chips)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)



first_shack = Shack.new
first_shack.add_milkshake(nizars_milkshake)
first_shack.add_milkshake(young_Lad_shake)

first_shack.printshakes