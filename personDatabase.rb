class Person
  def initialize(name,address,ph_number,email_id,weekly_hour)
    @name=name
    @address=address
    @ph_number=ph_number
    @email_id=email_id
    @weekly_hour=weekly_hour
  end

  def email
    puts "send email to all employees:" + @email_id
  end

end

class Full < Person

  def initialize(name,address,ph_number,email_id,weekly_hour,hourly_wage,overtime_pay)
    super(name,address,ph_number,email_id,weekly_hour)
    @hourly_wage=hourly_wage
    @overtime_pay=overtime_pay
  end

  def balance
    @balance
  end

  def process_payment
    @balance = ((@weekly_hour * @hourly_wage) + @overtime_pay)

    puts "Deposite #{@balance} to fulltime employees."
  end
end

person= Full.new("Jack","hdgfjkgu",3475687549,"fdhgfkgdk",20,30,400)
#person1 =Full.new("Bob","hdgfjkgu",3475687549,"fdhgfkgdk",20,30,400,500)

puts person.process_payment
puts person.email


class Intern < Person
  def initialize(name,address,ph_number,email_id,grade,test_score)
    @name=name
    @address=address
    @ph_number=ph_number
    @email_id=email_id
    @grade=grade
    @test_score=test_score
  end

  def top_intern

  end
end

#p2=Intern.new("Bob","wewwrere",342432555,"etretrtre",'B',90)