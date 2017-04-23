class Octal
  def initialize(number)
    @number = number.to_i
  end

  def to_decimal
    return 1 if @number == 1
    return 0 if @number < 10
    return 0 if @number.to_s.chars.any? { |digit| digit =~ /[^0-7]/ } 
    factor_hash = factors_and_exponents
    arr = []
    factor_hash.each do |exp, factor|
      arr << factor*(8**exp)
    end
    p arr.reduce(:+)
  end

  def factors_and_exponents
    n = @number/10
    factors_hash = {}
    loop do
      if 10**n > @number
        n -= 1
        next
      end
      factor = @number/10**n 
      factors_hash[n] = factor
      @number -= (factor * 10**n)
      n -= 1
      break if @number == 0
    end
    factors_hash
  end
end