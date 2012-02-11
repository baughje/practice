$i = 0;
$num = 5;

until $i == $num do
  
card1 = rand(10)
card2 = rand(10)
correct_answer = card1 + card2

puts "What is #{card1} + #{card2}?"
submitted_answer = gets.chomp
integer_answer = submitted_answer.to_i

if correct_answer != integer_answer then
  puts "Wrong\n\n"
else
  puts "Correct\n\n"
end

$i += 1;
end
=begin

total_number
number_correct

# elapsed time 

=end
