class Student
  def initialize(name,gender,ph_number,score)
    @name=name
    @gender=gender
    @ph_number=ph_number
    @score=score
  end

  def accumulated_score(marks)
    @score += marks
  end

  def display
    puts "Name ==>" + @name
    puts "Gender==>" + @gender
    puts "Ph_number==>" + @ph_number.to_s
    puts "Score==>" + @score.to_s

  end
end

s= Student.new("Mac","Male",3432433434,50)

puts s.accumulated_score(40)
puts s.display.to_s
