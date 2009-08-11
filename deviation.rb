  #Standard deviation = the square root of the sum of the diffrences between the samples and the
  #average squared divided by the sample size minus one
  
require 'rubygems'
require 'ruby-debug'

data_array = []
File.new("samples.txt", "r").each { |line| data_array << line.chomp }

class Stats
  attr_reader :data
  
  def initialize
   @result = data_array
  end
  
  def sample_size
    sample_size = data_array.size
  end  

  def sum
    sum = data_array.inject { |total, x| total + x }    
  end
  
  def average
    average = sum.to_f / sample_size
  end
  
  def difference
    difference = data.collect! { |x| x - average.to_f }
  end
  
  def difference_squared
    difference_squared = difference.collect.to_f { |x| x*x }
  end
  
  def sum_of_diff_squared
    sum_of_diff_squared = difference_squared.inject { |total, x| total + x }
  end
  
  def sample_sub_one
    sample_sub_one = sample_size - 1
  end
  
  def standard_deviation
    standard_deviation = Math.sqrt(sum_of_diff_squared.to_f / sample_sub_one)
  end
  
end

puts @data_array
