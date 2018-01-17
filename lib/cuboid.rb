
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

    #returns the basic pattern for the vertices in the x-y-z axis
    dimensions = [@width, @height, @length]
    list.map do |vertex|
      #fills 0 values with the corresponding origin coord, 1 values with the corresponding origin coord + length/height/width
      0.upto(vertex.length - 1) {|i| vertex[i] = vertex[i] == 1 ? @origin[i] + dimensions[i] : @origin[i]}
    end
    list
  end
  
  #returns true if the two cuboids intersect each other.  False otherwise.
  def intersects?(other)
    #the first and last vertices contain the min and max values for each cord.
    vals = [vertices.first, vertices.last]
    other_vals = [other.vertices.first, other.vertices.last]
    0.upto(1) do |vertex|
      0.upto(2) do |coord|
        #check if the current x/y/z coord is between the x/y/z coords of the other
        return true if vals[vertex][coord].between?(other_vals[0][coord], other_vals[1][coord])
        return true if other_vals[vertex][coord].between?(vals[0][coord], vals[1][coord]) 
      end
    end
    return false
  end

  #END public methods that should be your starting point  
end
