require 'tic_tac_toe'

describe "tic tac toe" do

  it "plays an X first" do
    ttt = TicTacToe.new
    ttt.play(0,0)
    ttt.player_at(0,0).should == 'X'
  end


end



