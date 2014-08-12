def sequence(start, step, times)
  i = 0
  #sum = 0
  while i < times
    yield (start + i*step)
    i += 1
  end
 #puts sum
end

sequence(7,3,5) {|x| puts x}
sequence(7,3,5) do |x,i|
 puts "#{x} for loop #{i}"

  end
