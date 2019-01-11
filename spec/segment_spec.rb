require 'rspec'
require 'segment'

RSpec.describe "paths" do
  context "a horizontal segment" do
    it "computes length" do
      segment = Segment.new(from: Point.new(x: 0, y: 0), to: Point.new(x: 0, y: 1))
      expect(segment.distance).to eq 1

      segment = Segment.new(from: Point.new(x: 0, y: 0), to: Point.new(x: 1, y: 1))
      expect(segment.distance).to be_within(0.001).of(1.414)
    end
  end
end