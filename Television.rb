class Television
  def initialize(size,company)
    @size=size
    @company=company
  end

  def watch
    puts "I am watching #{@company} tv of #{@size} inches."
  end

  def turnOn
    puts "Turn ON Tv"
  end
end


tv=Television.new(45,"sony")
puts tv.watch

puts tv.turnOn

class Speaker < Television
  def play
    puts "Speaker plays a music."
  end
end

spe=Speaker.new(30,"LG")
puts spe.play