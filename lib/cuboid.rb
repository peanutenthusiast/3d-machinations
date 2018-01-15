
class Cuboid
  attr_reader :origin
  def initialize(origin = [0, 0, 0], length, width, height)
    @origin = origin
    @length = length
    @width  = width
    @height = height
  end
  #BEGIN public methods that should be your starting point

  def move_to!(x, y, z)
    to_move = [x, y, z]
    @origin.merge!(to_move) {}
  end
  
  def vertices
  end
  
  #returns true if the two cuboids intersect each other.  False otherwise.
  def intersects?(other)
  end

  #END public methods that should be your starting point  
end
