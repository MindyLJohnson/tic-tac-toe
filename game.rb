require_relative 'user_interface.rb'

class Game
  include UserInterface
  attr_accessor :game_board, :player_one, :player_two, :current_player

  def initialize
    @game_board = GameBoard.new
    @player_one = nil
    @player_two = nil
    @current_player = nil
  end

  def play
    game_setup

    until game_board.full?
      game_board.display_board

      puts player_move_prompt(current_player.name)
      player_move = gets.chomp.to_i

      game_board.update_board(current_player, player_move)
      set_turn
    end
  end

  def game_setup
    puts player_name_prompt(1)
    player_one_name = gets.chomp
    puts player_name_prompt(2)
    player_two_name = gets.chomp

    @player_one = Player.new(player_one_name, 'X')
    @player_two = Player.new(player_two_name, 'O')
    @current_player = player_one
  end

  def set_turn
    if current_player == player_one
      @current_player = player_two
    else
      @current_player = player_one
    end
  end
end