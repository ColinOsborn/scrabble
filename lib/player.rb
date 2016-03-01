require_relative "scrabble"
class Player

  def initialize
    @total = 0
  end

  def play(word)
    # score the word using our existing scrabble class
    # call the score method
    # on what object -- Player
    # passing which arguments -- word

    # -- when do we update it --> whenever we play a word

    # Scoring
    # 1. get the score from the scrabble object
    # 2. add it to that @total counter and store it back as total
    # 3. Return....score of the word (from step 1)

    score_of_current_word = Scrabble.new.score(word)
    new_total = score_of_current_word + @total
    @total = new_total
    score_of_current_word


    # 1 - scored = 8
    # 2 - 8 + 0
    # 3 - 8

    # 1 - scored = 8
    # 2 - 8
    # 3 - 8
  end

  def total
    # store a counter
    # -- when do we read it --> when we call total

    @total
  end

end
