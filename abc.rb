def difference()
  puts "Enter a value for x:"
  x = gets.to_i
  puts "Enter a value for y:"
  y = gets.to_i
  if  (x>y)
    sub = x-y
    differ=abs(difference)
    puts "Difference of x and y is: " + differ.to_s
  else
    puts "Invalid input."
  end
end

#difference()

def factorial()
  i=1
  result=1
  puts "Enter a number:"
  n=gets.to_i
  if (n<=0)
    result=1
  else
    for i in (1..n)
      result=result*i
    end
    puts result
  end

end

#factorial()

def facto(n)
  if(n<=0)
    return 1
  else
    result=facto(n-1)*n
    return result
  end
end
factorial=facto(5)
#puts "The factorial for number is: "  + factorial.to_s

def pseudo()
  x=4.0
  y=8
  r=1.0
  while(r!=0.0000)
    r=x/y;
    puts r
    x-=1
  end
end
#pseudo()

def myabs(x)
  if(x>0)
    return x
  else
    return -x
  end

end
#puts myabs(-4)

def absDifference(p,q)
  if((p-q)>0)
    return p-q
  else
    return -(p-q)
  end
end

#puts absDifference(2,4)

def doFunction(x,y,z)
  if ((x>y and z>x) or (x<=y and x>=z))
    puts "Do function named floof."
  else
    puts "do function named arflig."
  end
end
#puts doFunction(12,78,-34)


def squartit()
  index=0
  while (index<array.size)
  square=array[index]*array[index]
  index +=1
  end
  return square
  end
array=[3,7,12,4,9,11]
squart=squartit(array)
puts "The square is #{squart}."

array=[3,7,12,4,9,11]
index=0
sum=0
while(index<array.size)
  sum=sum+array[index]
  index+=1
end
  puts sum.to_f


