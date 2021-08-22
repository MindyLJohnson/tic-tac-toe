class Board
  attr_reader :board

  WINNING_MOVES = [
    [0, 1 ,2], [3, 4, 5], [6, 7, 8],  #Rows
    [0, 3, 6], [1, 4, 7], [2, 5, 8],  #Columns
    [0, 4, 8], [2, 4, 6]              #Diagonals
  ]

  def initialize
    @board = (1..9).to_a
  end

  def update_board(player, move)
      board[move - 1] = player.game_piece
  end

  def full?
    board.none? {|square| square.is_a?(Numeric)}
  end

  def winner?
    WINNING_MOVES.any? do |moves|
      [board[moves[0]], board[moves[1]], board[moves[2]]].uniq.length == 1
    end
  end

  def display_board
    puts <<-HEREDOC

          #{board[0]} | #{board[1]} | #{board[2]}
         ---+---+---
          #{board[3]} | #{board[4]} | #{board[5]}
         ---+---+---
          #{board[6]} | #{board[7]} | #{board[8]}

    HEREDOC
  end
end