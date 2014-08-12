ex1 = [1, 2, 3].each
ex2 = [4, 5, 6].each
sum = 0

begin
  while true do
    sum += ex1.next * ex2.next
  end
rescue StopIteration
  puts sum
end

arr1=[1,2,3]
arr2=[4,5,6]

sum=0
index=0
while(index<arr1.size and index<arr2.size)
  sum=sum + (arr1[index]*arr2[index])
  index+=1
  #puts sum
end
puts sum