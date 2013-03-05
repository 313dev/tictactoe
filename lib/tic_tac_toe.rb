class TicTacToe

  BLANK = '-'

  def initialize
    clear_board
    start_as_player 'X'
  end

  def clear_board
    @board = [
      [BLANK, BLANK, BLANK],
      [BLANK, BLANK, BLANK],
      [BLANK, BLANK, BLANK]
    ]
  end

  def start_as_player(player)
    @current_player = player
  end

  def play(row, column)
    message = put_piece_at(row, column)
    if message == "OK"
      game_status = check_for_winner
      switch_players
      game_status
    else
      message
    end
  end

  def put_piece_at(row, column)
    if @board[row][column] != BLANK
      "X has already played in that space!"
    else
      @board[row][column] = @current_player
      "OK"
    end
  end

  def switch_players
    if @current_player == 'X'
      @current_player = 'O'
    else
      @current_player = 'X'
    end
  end

  def check_for_winner
    if horizontal_win || vertical_win || diagonal_win
      "#{@current_player} wins!"
    else
      "keep playing!"
    end
  end

  def horizontal_win
    (0..2).inject(false) do |result, row|
      result ||= win_on_row(row)
    end
  end

  def win_on_row(row)
    (0..2).inject(true) do |result, column|
      result &&= @board[row][column] == @current_player
    end
  end

  def vertical_win
    (0..2).inject(false) do |result, column|
      result ||= win_on_column(column)
    end
  end

  def win_on_column(column)
    (0..2).inject(true) do |result, row|
      result &&= @board[row][column] == @current_player
    end
  end

  def diagonal_win
    win_on_diagonal_right || win_on_diagonal_left
  end

  def win_on_diagonal_right
    (0..2).inject(true) do |result, index|
      result &&= @board[index][index] == @current_player
    end
  end

  def win_on_diagonal_left
    @board[0][2] == @current_player && 
      @board[1][1] == @current_player &&
      @board[2][0] == @current_player
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
