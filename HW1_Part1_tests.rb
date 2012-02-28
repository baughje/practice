require 'test/unit'
require './HW1_Part1'

class TestStrings < Test::Unit::TestCase

  def test_palindrome
    assert palindrome?("A man, a plan, a canal -- Panama"), "Should be a palindrome"
    assert palindrome?("Madam, I'm Adam!"), "Should be a palindrome"
    assert !palindrome?('Abracadabra'), "NOT a palindrome"
  end
  
  def test_count_words
    assert_equal count_words("A man, a plan, a canal -- Panama"), {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
    assert_equal count_words("Doo bee doo bee doo"), {'doo' => 3, 'bee' => 2}
  end
end