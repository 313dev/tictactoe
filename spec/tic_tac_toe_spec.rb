require 'tic_tac_toe'

describe "tic tac toe" do

  it "is a win for X when there are 3 X's on top" do

    ttt = TicTacToe.new
    ttt.placeX(0, 0)
    ttt.placeX(0, 1)
    ttt.placeX(0, 2)

    ttt.winner.should eq('X')
  end

  it "is a draw when there are not 3 in a row" do
    ttt = TicTacToe.new
    ttt.placeX(0, 0)
    ttt.placeX(2, 0)
    ttt.placeX(0, 2)
    ttt.placeX(2, 2)

    ttt.winner.should eq('Draw!')
  end

end



