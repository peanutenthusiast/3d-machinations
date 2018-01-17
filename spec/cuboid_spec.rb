require 'cuboid'

#This test is incomplete and, in fact, won't even run without errors.  
#  Do whatever you need to do to make it work and please add your own test cases for as many
#  methods as you feel need coverage
describe Cuboid do
  let(:cube) {Cuboid.new(7, 8, 9)}

  describe "#origin" do
    it "has an origin" do
      expect(cube.origin).to eq [0, 0, 0]
    end
  end

  describe "move_to" do
    it "changes the origin in the simple happy case" do
      expect(cube.move_to!(1,2,3)).to eq [1, 2, 3]
      expect(cube.move_to!(2,4,9)).to eq [3, 6, 12]
    end
  end

  describe "vertices" do
    it "lists all 8 vertices" do
      expect(cube.vertices.length).to eq 8
      expect(cube.vertices).to eq [[0, 0, 0], [0, 0, 7], [0, 9, 0], [0, 9, 7], [8, 0, 0], [8, 0, 7], [8, 9, 0], [8, 9, 7]]
    end

    it "lists all vertices with updated origin" do 
      cube.move_to!(1, 2, 3)
      expect(cube.vertices).to eq [[1, 2, 3], [1, 2, 10], [1, 11, 3], [1, 11, 10], [9, 2, 3], [9, 2, 10], [9, 11, 3], [9, 11, 10]]
    end
  end
  
  describe "intersects?" do
    let(:other) {Cuboid.new([1, 1, 1], 9, 8, 7)}
  end

end
