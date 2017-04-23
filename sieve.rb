class Sieve
  def initialize(num)
    @number = num
  end

  def primes
    range_arr = (2..@number-1).to_a
    prime_arr = []
    range_arr.each do |x|
      if multiple_check(x) == true
        prime_arr << x
      end
    end
    prime_arr
  end

  def multiple_check(num)
    arr = (2..num-1).to_a
    arr2 = []
    bool = true
    arr.each { |x| bool = false if num % x == 0 }
    bool
  end
end