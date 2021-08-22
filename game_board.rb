class GameBoard
  attr_reader :game_board

  def initialize
    @game_board = (1..9).to_a
  end

  def update_board(player, move)
      game_board[move - 1] = player.game_piece
  end

  def display_board
    puts <<-HEREDOC

          #{game_board[0]} | #{game_board[1]} | #{game_board[2]}
         ---+---+---
          #{game_board[3]} | #{game_board[4]} | #{game_board[5]}
         ---+---+---
          #{game_board[6]} | #{game_board[7]} | #{game_board[8]}

    HEREDOC
  end
end