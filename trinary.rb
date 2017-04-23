class Trinary
  BASE = 3

  def initialize(int_str)
    @number = int_str
  end

  def to_decimal
    factors_arr = @number.chars.reverse
    final_arr = []
    bool = true
    factors_arr.each_with_index do |obj, idx|
      if obj =~ /[0-2]/
        final_arr << (obj.to_i)*BASE**idx
      else 
        bool = false
        break
      end
    end
    return 0 if bool == false
    final_arr.reduce(:+)
  end
end