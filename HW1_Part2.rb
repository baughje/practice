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
  return player2 if play1 == 's' and play2 == 'r'
  return player2 if play1 == 'p' and play2 == 's'
  player1
end
  
def rps_tournament_winner(tournament)
  return tournament if tournament.flatten.length == 2
  bracket1 = tournament.first
  bracket2 = tournament.last
  rps_game_winner([rps_tournament_winner(bracket1), rps_tournament_winner(bracket2)])
end