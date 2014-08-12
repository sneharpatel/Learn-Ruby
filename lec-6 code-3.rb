class GetterSetter
  def self.readonly(*syms)
    code = ""

    syms.each do |s|
      code << "def #{s}; @#{s}; end\n"
    end

    class_eval code
  end

  def self.readwrite(*syms)
    code = ""

    syms.each do |s|
      code << "def #{s}; @#{s}; end\n"
      code << "def #{s}=(value); @#{s}=value; end\n"
    end

    class_eval code
  end
end

class Student < GetterSetter
  readwrite :name, :age

  def initialize(name, age)
    @name, @age = name, age
  end

  def to_s
    "#{@name} is #{@age}-year old"
  end
end

s = Student.new("John", 18)
puts s.name
puts s.age
s.name = "Jack"
s.age = 20
puts s