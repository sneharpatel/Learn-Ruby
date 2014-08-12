puts "Enter two numbers > 0,:"
n=4
d=3
for i in (1..n)
  if n > d
   m= n % d
   puts m "is reminder."
  elsif (n > 0 and d > 0)
   m = n % d
    puts m "is reminder."
  else
    puts "Invalid input"
  end
end