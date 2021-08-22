module UserInterface
  def player_name_prompt(number)
    "What's Player #{number}'s name?"
  end

  def player_move_prompt(turn)
    "Make your move #{turn}."
  end

  def invalid_move_prompt
    "Invalid move. Please enter the number of an open square."
  end

  def winner_prompt(winner)
    "Game Over! #{winner} won the game!"
  end

  def tie_prompt
    "Game Over! It was a tie!"
  end
end