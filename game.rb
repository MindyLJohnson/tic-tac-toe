require_relative 'user_interface.rb'

class Game
  include UserInterface
  attr_accessor :board, :player_one, :player_two, :current_player

  def initialize
    @board = Board.new
    @player_one = nil
    @player_two = nil
    @current_player = nil
  end

  def play
    game_setup

    until board.full? || board.winner?
      set_turn
      board.display_board

      puts player_move_prompt(current_player.name)
      player_move = gets.chomp.to_i

      until board.valid_move?(player_move)
        puts invalid_move_prompt
        player_move = gets.chomp.to_i
      end

      board.update_board(current_player, player_move)
    end

    end_game
  end

  def game_setup
    puts player_name_prompt(1)
    player_one_name = gets.chomp
    puts player_name_prompt(2)
    player_two_name = gets.chomp

    @player_one = Player.new(player_one_name, 'X')
    @player_two = Player.new(player_two_name, 'O')
  end

  def set_turn
    if current_player == player_one
      @current_player = player_two
    else
      @current_player = player_one
    end
  end

  def end_game
    board.display_board

    puts winner_prompt(current_player.name) if board.winner?
    puts tie_prompt if board.full? && !board.winner?
  end
end