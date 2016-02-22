gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  # def test_it_can_be_a_full_word
  #   assert_equal 7, Scrabble.new.score("shit")
  #   assert_equal 22, Scrabble.new.score("QUIZ")
  # end
end
