require_relative 'user_interface.rb'

class Game
  include UserInterface
  attr_accessor :player_one, :player_two, :turn

  def initialize
    @game_board = GameBoard.new
    @player_one = nil
    @player_two = nil
    @turn = 'Player 1'
  end

  def play
    game_setup
  end

  def game_setup
    puts player_name_prompt(1)
    player_one = gets.chomp
    puts player_name_prompt(2)
    player_two = gets.chomp
  end
end