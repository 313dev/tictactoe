class TicTacToe

  def initialize
    @board = [
      [ '-', '-', '-'],
      [ '-', '-', '-'],
      [ '-', '-', '-']
    ]

    @next_player = 'X'
  end

  def play(row, column)
    put_piece_at(row, column)
    switch_players
    check_for_winner
  end

  def put_piece_at(row, column)
    @board[row][column] = @next_player
  end

  def switch_players
    if @next_player == 'X'
      @next_player = 'O'
    else
      @next_player = 'X'
    end
  end

  def check_for_winner
    "keep playing!"
  end

  def board
    display = ''
    @board.each do |row|
      row.each do |square|
        display += " #{square}" 
      end
      display = display.rstrip + "\n"
    end

    display
  end

end
