  #Standard deviation = the square root of the sum of the diffrences between the samples and the
  #average squared divided by the sample size minus one
  
require 'rubygems'
require 'ruby-debug'


class Stats
  attr_reader( :data )
  
  def initialize
   @result = data_array
  end
  
  def sample_size
    @result = data_array.size
  end  

  def sum
    @result = data_array.inject { |total, x| total + x }    
  end
  
  def average
    @result = sum.to_f / sample_size
  end
  
  def difference
    @result = data.collect! { |x| x - average.to_f }
  end
  
  def difference_squared
    @result = difference.collect.to_f { |x| x*x }
  end
  
  def sum_of_diff_squared
    @result = difference_squared.inject { |total, x| total + x }
  end
  
  def sample_sub_one
    @result = sample_size - 1
  end
  
  def standard_deviation
    @result = Math.sqrt(sum_of_diff_squared.to_f / sample_sub_one)
  end
  
end


