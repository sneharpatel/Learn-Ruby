def sum()
sum =0
for i in (1..100)
  sum= sum+i
end
 puts "sum of 1 to 100 is: " + sum.to_s
end
sum()
=begin
sum=0
for i in(1..20)
  if(i%2==0)
    sum=sum+i
  end
end
puts sum



sum=0
i=1
while (i<=20)
  if (i%2==0)
    sum=sum+i
  end
  i+=1
end
puts sum

sum

sum=0
for i in (1..20)
  if(i%2!=0)
    sum = sum + i
    puts sum
    i+=1
  end
end

que=6

sum=0
i=1
while(i<=20)
  if(i%2 !=0)
    sum=sum+i
    puts sum
  end
  i+=1
end


#prob 7

sum=0
i=1
const= 1.0/3.0
while(i<=20)
  sum=sum+const
  const=(1.0/3.0)*const
  puts sum
  i+=1
end

#prob=8
i=1
sum=0
while(i<=10)
  const=  (1.0/i**3)
  sum= sum+const
  puts sum
  i+=1
end
=end

def sumCube()
sum=0.0
for i in (1..10)
  const=(1.0/i**3)
  sum= sum+const
  i+=1
  puts sum
end
end

def sumSqu()

  sum = 0.0
  for i in (0..10)
    sum=sum+(-1.0/2)**i
  end
  puts sum
end
sumSqu()