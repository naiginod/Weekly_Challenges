class DNA
  def initialize(original)
    @original = original.chars
  end

  def hamming_distance(secondary)
    sec_arr = secondary.chars
    count = 0
    @original.each_with_index do |obj, idx|
      if sec_arr[idx].nil?
        break
      elsif obj != sec_arr[idx]
        count += 1
      end
    end
    p count
  end
end