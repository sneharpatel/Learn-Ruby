def uniq_cha(str)
  if str.length == 0
    puts "Invalid string.Enter valid string."
  else
    flage=true

    for i in (0..str.length-1)

      for j in (i+1..str.length-1)
        while  str[j]==str[i]
          flage=false
          break
        end
      end
    end

    if flage==true
      puts "String is unique"
    else
      puts "string is not unique."
    end
    end
end

puts "Enter a string:"
str1=gets.to_s
str2=str1.downcase
uniq_cha(str2)




