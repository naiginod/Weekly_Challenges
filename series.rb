class Series
  def initialize(number)
    @number = number
  end

  def slices(amt)
    num = @number.split("").map { |x| x.to_i}
    raise ArgumentError if amt > num.size
    arr = []
    num.each_cons(amt) { |x| arr << x }
    arr
  end
end

