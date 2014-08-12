class Item
  def initialize(item,maker)
    @item=item
    @maker=maker
  end

  def display
    puts "Item ==> " + @item
    puts "Maker ==> " + @maker
  end
end

class ItemNumber < Item
  def initialize(item,maker,number)
    super(item,maker)
    @number=number
  end

  def store_numberOfItem(number)
    @total=0
    @number+=number
    puts @number.to_s
   # @number -= number
    #puts @number.to_s
    @total+=number
    puts @total.to_s
  end

  def display
    puts "Item ==> " + @item
    puts "Maker ==> " + @maker
    puts "Number ==>" + @number.to_s
  end
end
i=Item.new("Cloths","Polo")
item1=ItemNumber.new("milk","kirkland",100)

puts i.display
puts item1.store_numberOfItem(25)
puts item1.display




