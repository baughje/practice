def palindrome?(string)
  string = string.downcase.gsub(/\W/,"")
	string.reverse == string
end

def count_words(string)
  words = Hash.new(0)
  h = string.downcase.scan(/\b\S+\b/).each { |key| words[key] += 1 }
  words
end

