def palindrome?(string)
  string = string.downcase.gsub(/[\,\.\?\!\:\;\'\s+\"]/,"")
  if string.reverse == string
    puts "true"
  else
    puts "false"
  end
end

palindrome?("kay'ak")
palindrome?("what")
palindrome?("Madam, I'm Adam!")
