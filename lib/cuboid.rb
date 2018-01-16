
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
    list = [0, 1].repeated_permutation(3).to_a
    dimensions = [@width, @height, @length]
    list.map do |vertex|
      0.upto(vertex.length - 1) {|i| vertex[i] = vertex[i] == 1 ? @origin[i] + dimensions[i] : @origin[i]}
    end
    list
  end
  
  #returns true if the two cuboids intersect each other.  False otherwise.
  def intersects?(other)
  end

  #END public methods that should be your starting point  
end
