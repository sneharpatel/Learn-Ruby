#visibility.rb

class Student
  attr_reader :name, :money

  def initialize(n, m)
    @name, @money = n, m
  end

  def increaseAmount(a)
    @money += a
  end

  def decreaseAmount(a)
    @money -= a
  end

  def to_s
    "#{@name} has $#{@money}"
  end

  def borrow(s, a)
    @money += a
    s.decreaseAmount(a)
  end

  def spend(a)
    decreaseAmount(a)
  end

  protected :increaseAmount, :decreaseAmount
#  private_class_method :foo
end

s = Student.new("John", 50000)
s2 = Student.new("Jack", 20000)

def steal(s, a)
  s.decreaseAmount(a)
end

puts s
#steal s, 40000
s2.borrow(s, 40000)
puts s2
s.spend(40000)
puts s
puts s2