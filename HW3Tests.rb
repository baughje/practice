require 'test/unit'
require './HW3'

class TestStrings < Test::Unit::TestCase
  
  def test_combine_anagrams
    assert_equal combine_anagrams("cars, scar, racs"), true
    assert_equal combine_anagrams("four, for, potatoes"), true
  end
  
end