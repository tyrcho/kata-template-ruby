require 'rspec'
require 'my_kata'

RSpec.describe "unfold" do

  it "generates numbers" do
    expect(10.unfold { |n| n - 1 unless n == 1 }).to eq [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
    # expect(1.unfold (&'_+1 unless _==10')).to eq [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
  end
end