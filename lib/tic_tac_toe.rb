class TicTacToe

  def initialize
    clear_board
    start_as_player 'X'
  end

  def clear_board
    @board = [
      ['-', '-', '-'],
      ['-', '-', '-'],
      ['-', '-', '-']
    ]
  end

  def start_as_player(player)
    @next_player = player
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

  def x_wins_on_row(row)
    winner = @board[row].inject(true) do |result, space|
      result = result && (space == 'X')
    end
  end

  def check_for_winner
    if x_wins_horizontally
      "x wins!"
    else
      "keep playing!"
    end
  end

  def x_wins_horizontally
    (0..2).inject(false) do |result, row|
      result = result || x_wins_on_row(row)
    end
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
