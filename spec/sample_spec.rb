require 'rspec'
require 'my_kata'

RSpec.describe "unfold" do
  it "generates numbers" do
    expect(10.unfold { |n| n - 1 unless n == 1 }).to eq [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
  end
end

RSpec.describe "unfold2" do
  it "generates numbers" do
    expect(10.unfold2 { |n| [n, n - 1] unless n == 0 }).to eq [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
  end

  it "generates fibonacci" do
    fibo = [1, 1].unfold2 { |pair|
      i, j = pair
      [i, [j, i + j]] unless i > 13
    }
    expect(fibo).to eq [1, 1, 2, 3, 5, 8, 13]
  end
end