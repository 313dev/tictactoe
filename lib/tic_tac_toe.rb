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

  def play(row, column)
    puts ' -> Placing an X'
    @board[row][column] = 'X'
    display_board    
  end

  def player_at(row, column)
    'X'
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

  def winner?
  end
end
