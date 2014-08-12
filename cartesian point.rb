class CartesianPoint
  def initialize(x1,x2,y1,y2)
    @x1=x1.to_f
    @x2=x2.to_f
    @y1=y1.to_f
    @y2=y2.to_f
  end

  def find_slop
    if(@x2!=@x1)
      (@y2-@y1)/(@x2-@x1)
    else
      "if #{@x2} = #{@x1}, gives infinity answer."
    end

  end
end

plot=CartesianPoint.new(0,3,0,4)
p1=CartesianPoint.new(2,6,3,5)
p2=CartesianPoint.new(2,2,2,7)

puts p1.find_slop
puts plot.find_slop
puts p2.find_slop