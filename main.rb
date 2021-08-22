require_relative 'game_play.rb'
require_relative 'player.rb'
require_relative 'game_board.rb'

player_one = Player.new('Mindy')
player_two = Player.new('Pug')

game_board = GameBoard.new
p game_board.update_board(player_one, 1)