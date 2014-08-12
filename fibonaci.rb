first_num=0
puts first_num
second_num=1
puts second_num
sum=0

for i in (2..20)
  sum=first_num + second_num
  puts sum.to_s
  first_num=second_num
  second_num=sum
end