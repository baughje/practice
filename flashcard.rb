card1 = rand(10)
card2 = rand(10)

correct_answer = card1 + card2

puts "What is #{card1} + #{card2}?"
submitted_answer = gets
i = submitted_answer.to_i

if correct_answer != i then
  puts "Wrong!"
else
  puts "Correct!"
end
