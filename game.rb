require './player'
require './math_question'

class Game 
  def initialize 
    @players = [
    Player.new('Player 1', 'P1'),
    Player.new('Player 2', 'P2')
    ]
    @round = 0
    @index = 0
  end

  def play
    while !game_over? do

      header "NEW TURN"
      
      question = Question.new
      puts question.generate_question("#{@players[@index].name}")
      print ">"

      user_answer = gets.chomp.to_i

      user_answer != question.answer ? wrong : correct
      if user_answer != question.answer 
        @players[@index].wrong_answer
      end

      summary

      next_round
      @index = @round % @players.length
    end

    puts "#{winner.name} wins with a score of #{winner.score}."
    header "GAME OVER"
    puts "Goody bye!"

  end

  private

  def summary 
    @players.each.with_index do |player, index|
      print 'vs ' if index != 0 
      print "#{player.summary_line} "
    end
    puts
  end

  def wrong
    puts "Seriously? No!"
  end

  def correct
    puts "CORRECT! You got it!"
  end

  def game_over?
    @players.find { |r| r.dead? }
  end

  def winner 
    @players.find { |r| !r.dead? }
  end

  def next_round
    @round += 1
  end

  def header (info)
    puts "======="
    puts info
    puts "======="   
  end 

end

# game = Game.new
# puts game.play
