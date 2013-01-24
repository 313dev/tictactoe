class TicTacToe

  def initialize
    puts
    puts "Creating a new Board"
    puts '~~~~~~~~~~~~~~~~~~~~'

    @board = [
      [ '-', '-', '-'],
      [ '-', '-', '-'],
      [ '-', '-', '-']
    ]

    display_board
  end

  def placeX(row, column)
    puts ' -> Placing an X'
    @board[row][column] = 'X'
    display_board    
  end

  def display_board
    @board.each do |row|
      row.each do |square|
        print " #{square}" 
      end
      puts
    end

    puts "~~~~~~~"
  end

  def winner
    if @board[0][0] == 'X' && @board[0][1] == 'X' && @board [0][2] == 'X'
      'X'
    else
      'Draw!'
    end
  end

end
