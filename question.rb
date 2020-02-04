require_relative "player"
require_relative "game"

class Question
  attr_accessor :randomNumber1, :randomNumber2, :correct_answer, :answer

  def ask_question(current_player)
    @randomNumber1 = rand(20) + 1
    @randomNumber2 = rand(20) + 1
    @correct_answer = randomNumber1 + randomNumber2
    puts "#{current_player.name}: What does #{randomNumber1} plus #{randomNumber2} equal?"
    @answer = gets.chomp.to_i
  end
end
