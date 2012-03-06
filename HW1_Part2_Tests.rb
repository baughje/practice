require 'test/unit'
require './HW1_Part2'

class TestRockPaperScissors < Test::Unit::TestCase

  def test_cant_have_three_players
    assert_raise(WrongNumberOfPlayersError) do
      rps_game_winner([["Armando", "P"],["Dave", "S"],["David E.", "R"]])
    end
  end

  def test_cant_have_one_player
    assert_raise(WrongNumberOfPlayersError) do
      rps_game_winner([["Armando", "P"]])
    end
  end
  
  def test_no_such_strategy
    assert_raise(NoSuchStrategyError) do
      rps_game_winner([["Armando", "P"], ["Dave", "D"]])
    end
  end

  def test_scissors_beat_paper
    assert_equal rps_game_winner([["Armando", "P"], ["Dave", "S"]]), ["Dave", "S"]
  end
  
  def test_paper_beats_rock
    assert_equal rps_game_winner([["Richard", "R"], ["Armando", "P"]]), ["Armando", "P"]
  end

  def test_rock_beats_scissors
    assert_equal rps_game_winner([["Dave", "S"], ["Richard", "R"]]), ["Richard", "R"]
  end
  
  def test_same_strategy
    assert_equal rps_game_winner([["Armando", "P"], ["Dave", "P"]]), ["Armando", "P"]
  end
  
  def test_case_insensitive
    assert_equal rps_game_winner([["Dave", "s"], ["Richard", "r"]]), ["Richard", "r"]
  end
  
  def test_integration_there_can_be_a_tournament
      assert_equal rps_tournament_winner(
      [
        [
          [
            ["Armando", "P"], ["Dave", "S"]
          ],
          [
            ["Richard", "R"], ["Michael", "S"] ]
        ],
        [
          [
            ["Allen", "S"], ["Omer", "P"]
          ],
          [
            ["David E.", "R"], ["Richard X.", "P"]
          ]
        ]
      ]), ["Richard", "R"]
    end

    def test_tournament_returns_a_winner_for_simple_tournament
      assert_equal rps_tournament_winner(
        [
          [
            ["Armando", "P"], ["Dave", "S"]
          ],
          [
            ["Richard", "R"], ["Michael", "S"]
          ]
        ]
      ), [ "Richard", "R" ]
    end

    def test_tournament_returns_a_winner_for_a_more_complicated_tournament
      assert_equal rps_tournament_winner([ [ "Armando", "S" ], [ "Dave", "R" ] ]), [ "Dave", "R" ]
    end  
end
  
