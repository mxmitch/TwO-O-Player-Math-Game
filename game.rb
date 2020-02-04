require_relative 'question'
require_relative 'player'

class Game 
  attr_accessor :player1, :player2, :question, :players, :current_player

  def initialize 
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @question = Question.new
    @current_player = @player1
  end

  def start_game
    while (!game_over)
      question.ask_question(@current_player)
      if (!check_answer) 
        current_player.subtract_life
      end
      puts "P1: #{player1.lives}/3 P2: #{player2.lives}/3"
      switch_player
    end
  end
  
  def switch_player 
    if (@current_player == @player1)
      @current_player = @player2
    else 
      @current_player = @player1
    end
  end
  
  def check_answer 
    if(@question.answer == @question.correct_answer)
      puts "Correct, you fucking genius!"
      true
    else 
      puts "You are wrong, shit for brains!"
      false
    end
  end

  def game_over 
    if(@player1.lives == 0 or @player2.lives == 0)
      if(@player1.lives==0)
        puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
        puts "----- GAME OVER -----"
        puts "goodbye"
        return true
      else 
        puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
        puts "----- GAME OVER -----"
        puts "goodbye"
        return true
      end
    else 
      return false
    end
  end
end
