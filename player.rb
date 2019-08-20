class Player 
  attr_accessor :name, :lives, :short_name

  LIVES = 3

  def initialize name, short_name
    @name = name
    @short_name = short_name
    @lives = LIVES
  end

  def dead?
    @lives <= 0
  end

  def wrong_answer
    @lives -= 1
  end

  def summary_line
    "#{short_name}: #{@lives}/#{LIVES}"
  end

  def score
    "#{@lives}/#{LIVES}"
  end
  
end

# player_1 = Player.new("Player 1", "P1")
# puts player_1.name
# puts player_1.short_name
# puts player_1.lives

# player_1.summary_line