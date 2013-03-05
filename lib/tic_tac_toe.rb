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
    @current_player = player
  end

  def play(row, column)
    put_piece_at(row, column)
    game_status = check_for_winner
    switch_players
    game_status
  end

  def put_piece_at(row, column)
    @board[row][column] = @current_player
  end

  def switch_players
    if @current_player == 'X'
      @current_player = 'O'
    else
      @current_player = 'X'
    end
  end

  def check_for_winner
    if x_wins_horizontally || x_wins_vertically || x_wins_diagonally
      "x wins!"
    else
      "keep playing!"
    end
  end

  def x_wins_horizontally
    (0..2).inject(false) do |result, row|
      result ||= x_wins_on_row(row)
    end
  end

  def x_wins_on_row(row)
    (0..2).inject(true) do |result, column|
      result &&= @board[row][column] == 'X'
    end
  end

  def x_wins_vertically
    (0..2).inject(false) do |result, column|
      result ||= x_wins_on_column(column)
    end
  end

  def x_wins_on_column(column)
    (0..2).inject(true) do |result, row|
      result &&= @board[row][column] == 'X'
    end
  end

  def x_wins_diagonally
    x_wins_diagonally_right || x_wins_diagonally_left
  end

  def x_wins_diagonally_right
    (0..2).inject(true) do |result, index|
      result &&= @board[index][index] == 'X'
    end
  end

  def x_wins_diagonally_left
    @board[0][2] == 'X' && @board[1][1] == 'X' && @board[2][0] == 'X'
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
