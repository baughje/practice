class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_tournament_winner(tournament)
  tournament = [
  [ [ ["Armando", "P"], ["Dave", "S"] ],
  [ ["Richard", "R"],  ["Michael", "S"] ], ],
  [ [ ["Allen", "S"], ["Omer", "P"] ],
  [ ["David E.", "R"], ["Richard X.", "P"] ] ] ]

game1 = tournament[1] 
game2 = tournament[2]  
game3 = tournament[3]
game4 = tournament[4] 
game5 = game1 v game2
game6 = game3 v game4
game7 = game5 v game6
end