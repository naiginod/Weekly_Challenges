class Phrase
  def initialize(str)
    @str = str
  end

  def word_count
    count_hash = {}
    str_scrub
    @arr_str.each do |word|
      count_hash.keys.include?(word) ? next : count_hash[word] = @arr_str.count(word)
    end
    count_hash
  end

  def str_scrub
    @arr_str = []
    @str.scan(/\b[\w']+\b/) do |word|
      @arr_str << word.downcase
    end
    @arr_str
  end
end