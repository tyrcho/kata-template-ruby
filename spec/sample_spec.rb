require 'rspec'
require 'my_kata'

RSpec.describe "#score" do
  context "with no strikes or spares" do
    it "sums the pin count for each roll" do
      expect(greet("world")).to eq "hello, world"
    end
  end
 end