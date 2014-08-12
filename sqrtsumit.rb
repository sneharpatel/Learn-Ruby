=begin
array=[3,7,12,4,9,11]
index=0
sum=0
while(index<array.size)
  sum=sum+array[index]
  index+=1
end
puts sum.to_s

=end

def sum_it(array)
  sum=0
  index=0
  while(index<array.size)
    sum=sum+array[index]
    index+=1
  end
  return sum
end

data=[3,7,12,4,9,11]
sum=sum_it(data)
puts "The sum is #{sum}."

def squartit(array)
  index=0
  while (index<array.size)
    square=array[index]*array[index]
    puts square
    index +=1
  end
  return square
end
array=[3,7,12,4,9,11]
#squart=squartit(array)




def squareit(value)
  return value*value
end


def sumit(array,afunction)
  result=0
  for number in(array)
    result=result+ afunction.call(number)
    #puts result
  end
  puts result
  return result
end

sumit(array,method(:squareit))