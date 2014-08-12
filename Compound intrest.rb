puts "Enter value of variables:"
n=gets.to_f
p=gets.to_f
r=gets.to_f
while(n>0)
  intrest=(1+(r/100))** n
  amount = p*intrest
  puts amount
end