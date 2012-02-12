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

if $wrong > $correct then
  puts "You got more wrong than right.  You need more practice!\n\n";
  elsif $wrong = 0 then
    puts "You are a rock star!\n\n"
elsif $wrong < $correct then
  puts "You got more right than wrong.  Nice job.\n\n"
else
puts "You got #{$wrong} wrong out of #{$total}.\n\n"
#puts "You answered #{$correct} correctly.  Good job!\n\n"
end

=begin

total_number
number_correct

# elapsed time 

=end
