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

  def test_it_can_be_a_full_word
    assert_equal 7, Scrabble.new.score("shit")
    assert_equal 22, Scrabble.new.score("QUIZ")
  end

  def test_it_likes_f1_names
    assert_equal 9, Scrabble.new.score("Vettel")
    assert_equal 6, Scrabble.new.score("Alonso")
    assert_equal 17, Scrabble.new.score("Raikkonen")
  end
end
