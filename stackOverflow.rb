class Person
  def name
    @name
  end
  def name=(str)
    @name=str
  end
end

person = Person.new
person.name ="Dennis"
puts person.name


class Person1
  attr_accessor :name

  def greeting
    "Hello #{@name}"
  end
end

person1 = Person1.new
person1.name = "Dennis"
puts person1.greeting
