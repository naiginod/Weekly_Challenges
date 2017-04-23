class SumOfMultiples
  def initialize( a = [3,5], *numbers)
    @numbers = [a, numbers].flatten
  end

  def self.to(max_num)
    SumOfMultiples.new.to(max_num)
  end

  def to(max_num)
    return 0 if max_num == 1
    arr = []
    @numbers.each do |x|
      arr << iterator(x, max_num)
    end
    arr.flatten.uniq.reduce(:+)
  end

  def iterator(num, max_num)
    count = 1
    total = []
    loop do
      if num*count < max_num
        total << num*count
        count += 1
      else
        break
      end
    end
    total
  end
end