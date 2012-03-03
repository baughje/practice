def palindrome?(string)
  string = string.downcase.string.gsub(/[\,\.\?\!\:\;\'\s+\"]/,"")
	string.reverse == string
end

