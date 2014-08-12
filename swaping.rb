arr = [5,22,57,85,35,65,27,59]
index = 0
while(index < arr.size)
  if(arr[index] < arr[index + 1])
    puts arr[index]
  else
    temp=arr[index]
    arr[index]= arr[index+1]
    arr[index+1]=temp
    puts arr[index]
  end
  index = index +1
end





