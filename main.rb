require_relative 'game_play.rb'
require_relative 'player.rb'
require_relative 'game_board.rb'

player_one = Player.new('Mindy', 'X')
player_two =  Player.new('Pug', 'O')

game_board = GameBoard.new
game_board.update_board(player_one, 1)
game_board.display_board