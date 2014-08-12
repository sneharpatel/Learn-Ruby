#class_method.rb

class Student
  def self.Sayhi
    "I am " + self.to_s
  end

  class << self
    def Saybye
      self.Sayhi + " Bye!"
    end
  end
end

puts Student.Sayhi
puts Student.Saybye