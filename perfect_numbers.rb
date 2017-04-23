class PerfectNumber
  
  def self.classify(number)
    raise RuntimeError if number < 0
    arr = []
    (1..number - 1).each do |multiple|
      arr << multiple if number % multiple == 0
    end
    p arr
    p arr.reduce(:+)
    if arr.reduce(:+) < number
      return "deficient"
    elsif arr.reduce(:+) > number
      return "abundant"
    else
      return "perfect"
    end
  end
end