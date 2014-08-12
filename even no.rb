# using for loop
def even()
  for i in (1..20)
    if (i%2==0)
      puts i
      i+=1
    end
  end
end


def evenwhile()
  i=1
  while (i<=20)
    if (i%2==0)
      puts i
    end
    i +=1
  end
end

def divisible()
  for i in (1..20)
    if (i%3==0)
      puts i
      i+=1
    end
  end
end

def divisibleby()
  i=1
  while (i<=20)
    if (i%3==0)
      puts i
    end
    i+=1
  end
end

def square()
  for i in (1..5)
    if (i%2 == 0)
      s=i**2
      puts s
      i+=1
    end
  end
end


def printno()
  i=1
  while (i<=20)
    puts i.to_s
    if i<20
      puts "+"
    end
    i+=1
  end
end


square()