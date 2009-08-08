require 'rubygems'
require 'FasterCSV'
require 'ostruct'
require 'ruby-debug'


results = []
File.open('./samples.csv') do |f|
  results << f.readline.split(',').map{ |f| f.to_f }
end


puts ''
puts "Samples: #{results.sort.join(', ')}"
puts "Sample size: #{results.size}"
sum = results.inject { |total,x| total + x }
puts "Sum of the samples: #{sum}"
#average = sum / results.size
#puts "Average: #{average}"
#difference = results.collect! { |x| x - average }
#difference_squared = difference.collect { |x| x*x }
#sum_of_diff_squared = difference_squared.inject { |total, x| total + x }
#puts "Sum of the squared deviations: #{sum_of_diff_squared}"
sample_sub_one = results.size - 1
#standard_deviation = Math.sqrt(sum_of_diff_squared.to_f / sample_sub_one)
#puts "Standard deviation: #{standard_deviation}"
puts ''

