class Point
  attr_reader :x, :y

  include Comparable

  def initialize(x, y)
    @x, @y = x, y
  end

  def to_s
    "(#{@x}, #{@y})"
  end

  def <=>(other)
    unless (other.instance_of? Point)
      return false
    else
      return x*x+y*y <=> other.x*other.x + other.y*other.y
    end
  end
end

class Point3D < Point
  attr_reader :x, :y, :z

  @@total = 0

  def initialize(x, y, z)
    super(x, y)
    @z = z
    @@total += 1
  end

  def to_s
    "(#{@x}, #{@y}, #{@z})"
  end

  def <=>(other)
    unless (other.instance_of? Point3D)
      return false
    else
      return x*x+y*y+z*z <=> other.x*other.x +
          other.y*other.y +
          other.z*other.z
    end
  end

  def self.report
    return @@total
  end
end

class Line
  attr_reader :start, :end

  include Comparable

  def initialize(s, e)
    @start, @end = s, e
  end

  def to_s
    "[" + @start.to_s + ", " + @end.to_s + "]"
  end

  def <=>(other)
    unless (other.instance_of? Line)
      return false
    else
      return (@start.x-@end.x)**2 + (@start.y-@end.y)**2 <=>
          (other.start.x-other.end.x)**2 + (other.start.y-other.end.y)**2
    end
  end
end

l1 = Line.new(Point.new(10, 20), Point.new(11, 21))
l2 = Line.new(Point.new(3, 4), Point.new(20, 1))
l3 = Line.new(Point.new(12, 1), Point.new(12, 3))
lines = [l1, l2, l3]
lines.sort!
lines.each {|l| puts l}

#p1 = Point.new(5, 7)
#p2 = Point.new(3, 4)
#p3 = Point.new(1, 2)
#p4 = Point.new(10, 11)

#points = [p1, p2, p3, p4]
#points.sort!
#points.each {|p| puts p}

#p1 = Point3D.new(2, 3, 4)
#p2 = Point3D.new(1, 8, 9)
#p3 = Point3D.new(3, 10, 14)
#points = [p1, p2, p3]
#points.sort!
#puts Point3D.report
#points.each {|p| puts p}