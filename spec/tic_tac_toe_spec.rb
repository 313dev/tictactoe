require 'tic_tac_toe'

describe "tic tac toe" do

  it "plays an X first" do
    ttt = TicTacToe.new
    ttt.play(0,0)
    ttt.player_at(0,0).should == 'X'
  end

  it "plays an O second" do
    ttt = TicTacToe.new
    ttt.play(0,0)
    ttt.play(0,1)
    ttt.player_at(0,1).should == 'O'
  end

end



