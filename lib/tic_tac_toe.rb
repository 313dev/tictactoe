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
    @board[row][column] = @next_player

    if @next_player == 'X'
      @next_player = 'O'
    else
      @next_player = 'X'
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

  def winner?
  end
end
