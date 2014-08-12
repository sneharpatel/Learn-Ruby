class Food

  def initialize(name, price, location)
    @name=name
    @price=price
    @location=location
  end

  def printLabel
    #@priceLabel=priceLabel
    @priceLabel=@price
    puts "Printlable to stic on food of #{@priceLabel}."
  end

  def display
    puts "#{@name} is of $ #{@price} per lb and located at #{@location}. "
  end

end

class Fruit < Food

  def printLabel
    #@priceLabel=priceLabel
    @priceLabel=@price
    puts "Printlable to stic near shelf of foods of #{@priceLabel}."
  end


end

class Meat < Food

end

class Grain < Food

end


f=Fruit.new("Orange", 3, "4th row")
puts f.printLabel
puts f.display
m=Meat.new("Prok", 4, "10th row")
puts m.printLabel
puts m.display