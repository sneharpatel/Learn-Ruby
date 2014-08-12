class CompareNumbers
  def initialize(a, b)
    @a=a
    @b=b
  end

  def find_larger
    if (@a>@b)
      "#{@a} is larger than #{@b}"
      elsif (@b > @a)
      "#{@b} is larger than #{@a}"
      else
       "Both are equal."
    end
  end
end


c=CompareNumbers.new(6, 3)

puts c.find_larger