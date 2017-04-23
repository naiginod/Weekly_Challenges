class Anagram
  def initialize(str)
    @word = str
  end

  def match(arr)
    original = @word.downcase.chars.sort.join
    final_arr = []
    arr.each do |word|
      next if (@word == word) || (@word.downcase == word.downcase)
      if original == word.downcase.chars.sort.join
        final_arr << word
      end
    end
    final_arr
  end
end