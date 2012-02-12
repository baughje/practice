$total = 0;
$num = 5;
$wrong = 0;
$correct = 0;
#$start_time = Time.now;
#$total_time = Time.now - $start_time;

puts Time.now
until $total == $num do
  
card1 = rand(10)
card2 = rand(10)
correct_answer = card1 - card2

puts "\n\nWhat is #{card1} - #{card2}?"
submitted_answer = gets.chomp
integer_answer = submitted_answer.to_i

if correct_answer != integer_answer then
  puts "Wrong\n\n";
  $wrong += 1;
else
  puts "Correct\n\n";
  $correct += 1;
end

$total += 1;

end

puts "You got #{$wrong} wrong out of #{$total}.\n\n"

=begin

total_number
number_correct

# elapsed time 

=end
