def count_words(string)
  string.downcase!
  h = Hash.new
  string.scan(/\b\S+\b/)
 
end

count_words("The time is the time to act")