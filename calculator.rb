puts "Welcome to calculator."
flag= true
while(flag==true)
  puts "Enter 'a' for addition,'s' for subtraction,'m' for multiplication,'d' for division:"
  operator=gets.chomp
  puts "Enter two numbers:"
  num1=gets.to_f
  num2=gets.to_f

  if operator == 'a'
    addition=num1+num2
    puts "The addition is:" + addition.to_s
  elsif operator == 's'
    subtraction=num1-num2
    puts "The subtraction is:" + subtraction.to_s
  elsif operator == 'm'
    multiplication=num1*num2
    puts "The multiplication is:" + multiplication.to_s
  elsif operator == 'd'
    division=num1/num2
    puts "The division is:" + division.to_s
  else
    puts "Invalid input."
  end
  puts "Do you want to continue? Enter Stop/continue:"
   enter=gets.chomp
  if enter == 'stop'
     flag = false
  end
end
puts "Thank you."