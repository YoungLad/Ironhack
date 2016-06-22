class ShoppingCart
  def initialize
    @items = []
  end

 	def add_item(item)
  	@items.push(item)
   end

   def checkout
   	syst = []
   	@items.each do |x|
   	syst.push(x.price)
   	end
   	sum = 0
   	syst.each do |i|
   	sum += i end
   	if syst[4] = true
   		sum = (sum*90)/100
   	end
   		puts sum

   end
end

class Item 
  def initialize(name, price)
      @name = name
      @price = price
  end

   def price
     	@price
   end
end

class Houseware < Item
  def price
      #Hmmm maybe this changes somehow..
      if @price > 100
      	@price = (@price*95)/100
      	@price
      else
      	 @price
      end
  end
end

class Fruit < Item
  def price
      puts "Is it a weekday?(Y/N)"
      day = gets.chomp
      if day == "N"
      	@price = (@price*90)/100
      	 @price
      elsif day == "Y"
      	@price == @price
      	@price
      else
     	@price
      end
  end
end

banana = Fruit.new("Banana", 10)
orangejuice = Fruit.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vaccum = Houseware.new("Vaccum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)

# vaccum.price
# rice.price
# banana.price

cart = ShoppingCart.new


cart.add_item(banana)
cart.add_item(rice)
cart.add_item(vaccum)
cart.add_item(anchovies)
cart.add_item(orangejuice)

cart.checkout
