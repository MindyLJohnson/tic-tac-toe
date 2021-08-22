class GameBoard
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end
end

class Player
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

player_one = Player.new("Mindy")
player_two = Player.new("Pug")

p game_board = GameBoard.new(player_one, player_two)