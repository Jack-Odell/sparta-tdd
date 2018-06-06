require 'mult_three_five'

describe MultThreeFive do

  before(:all) do
    @mtf = MultThreeFive.new
    @mtf.create_multiples_arr(1, 10)
  end

  it 'Should return true if number is divisible by 3' do
    expect(@mtf.divisible_by?(9, 3)).to be true
  end

  it 'Should return false if number is not divisible by 3' do
    expect(@mtf.divisible_by?(10, 3)).to be false
  end

  it 'Should return true if number is divisible by 5' do
    expect(@mtf.divisible_by?(10, 5)).to be true
  end

  it 'Should return false if number is not divisible by 5' do
    expect(@mtf.divisible_by?(11, 5)).to be false
  end

  it 'Should return sum of all multiples of three and five from one to ten equaling twenty-three' do
    expect(@mtf.sum_of_multiples).to eq(23)
  end

end
