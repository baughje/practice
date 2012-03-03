class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  player1 = game.first
  player2 = game.last
  play1 = player1.last.downcase
  play2 = player2.last.downcase
  
  raise NoSuchStrategyError unless play1.match(/[r|p|s]/) and play2.match(/[r|p|s]/)
  return player2 if play1 == 'r' and play2 == 'p'
  puts "#{player2} wins since P>R."
  return player2 if play1 == 's' and play2 == 'r'
  puts "#{player2} wins since R>S."
  return player2 if play1 == 'p' and play2 == 's'
  puts "#{player2} wins since S>P."
  return player1 if play1 == play2
  puts "#{player1} wins since they used the same strategy."
  
  
end
  
