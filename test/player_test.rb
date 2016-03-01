gem 'minitest'
require_relative '../lib/player'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class PlayerTest < Minitest::Test
  def test_player
    player = Player.new
    # make an assertion to prove that
    # our new player object is of the class
    # Player
    assert_equal(player.class, Player)
  end

  def test_get_back_word
    player = Player.new # have an instance of player
    # player is the thing that acutally  has the play method
    assert_equal 8, player.play("hello")
  end

  def test_playing_total
      player = Player.new
      assert_equal 8, player.play("hello")
      assert_equal 8, player.total

      assert_equal 8, player.play("hello")

      # needs to start out as ... --> initialize it with the right value
      player2 = Player.new
      assert_equal 0, player2.total
  end
end
