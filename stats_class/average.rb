
require 'rubygems'

# require 'test/unit'


data = [5,8,5,4,6,7,8,8,3,6]

#Standard deviation = the square root of the sum of the diffrences between the samples and the 
#average squared divided by the sample size minus one
#s = sqrt((X - M)^2/n-1)

puts ''
puts "Samples: #{data.sort.join(", ")}"
puts "Sample size: #{data.size}"
sum = data.inject { |total,x| total + x }
puts "Sum of the samples: #{sum.to_f}"
average = sum / data.size
puts "Average: #{average.to_f}"
difference = data.collect! { |x| x - average }
difference_squared = difference.collect { |x| x*x }
sum_of_diff_squared = difference_squared.inject { |total, x| total + x }
puts "Sum of the squared deviations: #{sum_of_diff_squared}"
sample_sub_one = data.size - 1
standard_deviation = Math.sqrt(sum_of_diff_squared.to_f / sample_sub_one)
puts "Standard deviation: #{standard_deviation}"
puts ''