require 'cuboid'

#This test is incomplete and, in fact, won't even run without errors.  
#  Do whatever you need to do to make it work and please add your own test cases for as many
#  methods as you feel need coverage
describe Cuboid do
  let(:cube) {Cuboid.new(7, 7, 7)}

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
  
  describe "intersects?" do
  end

end
