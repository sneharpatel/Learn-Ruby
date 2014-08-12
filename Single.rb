class Point
  attr_accessor :x,:y
  def initialize(x,y)
    @x,@y=x.to_f,y.to_f
  end

  def distance
    Math.sqrt(@x*@x + @y* @y)
  end

  def sort_by


  end

  def to_s
    puts "The co-ordinates point is: (#{@x},#{@y})"
  end

end

class Point3D < Point

  def initialize(x,y,z)
    super(x,y)
    @z=z.to_f
  end

  def distance
    Math..sqrt(@x*@x + @y* @y + @z*@z)
  end

  def sort_by

  end

  def to_s
    puts "The co-ordinate point is: (#{@x},#{@y},#{@z})"
  end


  def report

  end


end


class Line

  def initialize(x1,y1,x2,y2)
    @x1,@y1,@x2,@y2=x1,y1,x2,y2
  end

  def length

    Math.sqrt((@x1-@x2) * (@x1-@x2) + (@y1-@y2)* (@y1-@y2))
  end

  def sort_by
    
  end

  def to_s
    puts "The co-ordinate point is: ((#{@x1},#{@y1}),(#{@x2},#{@y2}))"
  end

end

p=Point.new(5,7)
p.sort_by do |p|
  [p.distance]
end
puts p.sort_by
puts p.to_s

l=Line.new((10,20),(11,21))
l..sort_by { |l| [l.length] }