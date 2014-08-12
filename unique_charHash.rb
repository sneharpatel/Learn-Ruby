def uniq(str)
  str1=Hash.new(256)
  for i in 0..str.size-1

    if str1.has_key? str[i] and str1[str[i]] == "true"
      return 0
    else
      str1[str[i]]= "true"
      puts str1
    end
  end
  return 1
end

puts "Enter a string:"
str=gets.to_s.chomp
if str.length==0
  puts "String is empty."
else
  str1=str.delete(' ').split("")
  puts str1
  x=uniq(str1)
  if x==1
    puts 'String is unique.'
  else
    puts 'string is not unique.'
  end
end


