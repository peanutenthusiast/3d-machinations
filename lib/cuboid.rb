
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
    0.upto(2) {|index| @origin[index] += to_move[index]}
    @origin
  end
  
  def vertices
    to_fill = [0, 1].repeated_permutation(3).to_a
    to_fill.map do |vertex|
      vertex[0] = @width if vertex[0] == 1
      vertex[1] = @height if vertex[1] == 1
      vertex[2] = @length if vertex[2] == 1
    end
  end
  
  #returns true if the two cuboids intersect each other.  False otherwise.
  def intersects?(other)
  end

  #END public methods that should be your starting point  
end
