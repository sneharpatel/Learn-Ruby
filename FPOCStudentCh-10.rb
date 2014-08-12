class Student

  def initialize(name, address, ph_number, ssn, sid, gpa)
    @name=name
    @address=address
    @ph_number=ph_number
    @ssn=ssn
    @sid=sid
    @gpa=gpa
  end

  def display
    puts "Name : " + @name
    puts "Address : " + @address
    puts "Ph_number : " + @ph_number.to_s
    puts "SSN : " + @ssn.to_s
    puts "SID : " + @sid.to_s
    puts "GPA : " + @gpa.to_s
  end
end

class Full_time < Student

  #def initialize(name, address, ph_number, ssn, sid, gpa)
    #super(name, address, ph_number, ssn, sid, gpa)
 # end

  def calculate_fee(credit)
    @credit=credit
    @tuition_fees
    @min_credit=12
    if @min_credit >=12
      if credit <= 18
        @tuition_fees
        puts "Tuition fees for #{@name} is : " + "$" + @tuition_fees.to_s
      else
        @tuition_fees= 600 * @credit
        puts "Tuition fees for #{@name} is : " + "$" + @tuition_fees.to_s
      end
    end
  end

end


class Part_time < Student

  def calculate_fees(credit)
    @credit=credit
    @tuition_fees

    if credit < 12
      @tuition_fees=750 * credit
      puts "Tuition fees for #{@name} is : " + "$" + @tuition_fees.to_s
    end
  end


end

class Off_campus < Student

  def calculate_credit(credit)
    @credit=credit
    @tuition_fees

    @tuition_fees = 520 * credit
    puts "Tuition fees for #{@name} is : " + "$" + @tuition_fees.to_s
  end

end

s1=Full_time.new("Jack", "yetefghfguy", "533243443", "34344342", "232434", 4)
puts s1.display.to_s
puts s1.calculate_fee(20)

s2=Part_time.new("John","yretyrewry","34674354","4654754334","32434",3.5)
puts s2.calculate_fees(10)
puts s2.display.to_s

s3=Off_campus.new("Alice","gdjhsfdsfdgf","7347335549","865866606","435555",3.8)
puts s3.calculate_credit(20)
puts s3.display.to_s

