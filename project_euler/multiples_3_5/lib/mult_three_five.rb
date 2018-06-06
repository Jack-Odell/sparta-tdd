class MultThreeFive
  attr_accessor :multiples_arr

  def initialize
    @multiples_arr = []
  end


  def create_multiples_arr(num_from, num_to)
    (num_from..num_to).each do |i|
      if divisible_by?(i, 3) && i < num_to
        @multiples_arr << i
      elsif divisible_by?(i, 5) && i < num_to
        @multiples_arr << i
      end
    end
  end

  def divisible_by?(num, div_by)
    (num % div_by).zero?
  end

  def sum_of_multiples
    @multiples_arr.sum
  end
end
