require 'rubygems'
require 'FasterCSV'
require 'ostruct'
require 'ruby-debug'


results = []
File.new("samples.txt", "r").each { |line| results << line.chomp }

#data = Array.new
#  FasterCSV.foreach( "./samples.csv", :headers => false ) do |row|
#    data << Array.new( row )
#  end

  
def StandardDeviation(results)

  
  #Standard deviation = the square root of the sum of the diffrences between the samples and the 
  #average squared divided by the sample size minus one
  #s = sqrt((X - M)^2/n-1)
  results.map!{ |results| results.to_f } 
  sum = results.inject { |total, x| total + x }
  #average = sum / results.size
  #difference = data.collect! { |x| x - average }
  #difference_squared = difference.collect { |x| x*x }
  sample_sub_one = results.size - 1
  #standard_deviation = Math.sqrt(sum_of_diff_squared.to_f / sample_sub_one)
  
  
end

StandardDeviation(results)

puts ''
puts "Samples: #{results.sort.join(", ")}"
puts "Sample size: #{results.size}"
puts "Sum of the samples: #{sum}"
#puts "Average: #{average.to_f}"
#puts "Sum of the squared deviations: #{sum_of_diff_squared}"
#puts "Standard deviation: #{standard_deviation}"
puts ''

