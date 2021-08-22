require_relative 'game.rb'
require_relative 'player.rb'
require_relative 'game_board.rb'
require_relative 'user_interface.rb'

def play_game
  game = Game.new
  game.play
end

play_game