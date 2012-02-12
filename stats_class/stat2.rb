ary_1 = [ 3, 7, 5, 4, 5, 6, 7, 8, 6, 5 ]
ary_2 = [ 34, 54, 17, 26, 34, 25, 14, 24, 25, 23 ]
ary_3 = [ 154, 167, 132, 145, 154, 145, 113, 156, 154, 123 ]

puts ary_1.sort
puts ''
puts ary_2.sort 
puts ''
puts ary_3.sort
puts ''
puts "Array 1: #{ary_1.size}"
puts "Array 2: #{ary_2.size}"
puts "Array 3: #{ary_3.size}"

ary_1_sum =  3+ 7+ 5+ 4+ 5+ 6+ 7+ 8+ 6+ 5 
ary_2_sum =  34+ 54+ 17+ 26+ 34+ 25+ 14+ 24+ 25+ 23 
ary_3_sum  =  154+ 167+ 132+ 145+ 154+ 145+ 113+ 156+ 154+ 123
puts ''
puts ary_1_sum, ary_2_sum, ary_3_sum
puts "The mean is #{ary_1_sum.to_f / ary_1.size.to_f }"
puts "The mean is #{ary_2_sum.to_f / ary_2.size.to_f }"
puts "The mean is #{ary_3_sum.to_f / ary_3.size.to_f }"

