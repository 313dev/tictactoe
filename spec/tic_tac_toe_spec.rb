require 'tic_tac_toe'
require 'spec_helper'


describe "tic tac toe" do

  it "starts with an empty board" do
    ttt = TicTacToe.new
    ttt.board.should == pretty(
      " - - -
        - - -
        - - -
      ")
  end

  it "plays an X first" do
    ttt = TicTacToe.new
    ttt.play(0,0)
    ttt.board.should == pretty(
      " X - -
        - - -
        - - -
      ")
  end

  it "plays an O second" do
    ttt = TicTacToe.new
    ttt.play(0,0)
    ttt.play(0,1)
    ttt.board.should == pretty(
      " X O -
        - - -
        - - -
      ")
  end

  it "plays an X third" do
    ttt = TicTacToe.new
    ttt.play(0,0)
    ttt.play(0,1)
    ttt.play(0,2)
    ttt.board.should == pretty(
      " X O X
        - - -
        - - -
      ")
  end

  it "wins across the top for X" do
    ttt = TicTacToe.new
    ttt.play(0,0)
    ttt.play(1,0)
    ttt.play(0,1)
    ttt.play(2,0)
    ttt.play(0,2).should == "x wins!"
  end

  it "wins across the middle for X" do
    ttt = TicTacToe.new
    ttt.play(1,0)
    ttt.play(0,0)
    ttt.play(1,1)
    ttt.play(0,1)
    ttt.play(1,2).should == "x wins!"
  end

  it "wins across the bottom for X" do
    ttt = TicTacToe.new
    ttt.play(2,0)
    ttt.play(0,0)
    ttt.play(2,1)
    ttt.play(0,1)
    ttt.play(2,2).should == "x wins!"
  end

  it "wins in the first column" do
    ttt = TicTacToe.new
    ttt.play(0,0)
    ttt.play(0,1)
    ttt.play(1,0)
    ttt.play(0,2)
    ttt.play(2,0).should == "x wins!"
  end

  it "wins in the second column" do
    ttt = TicTacToe.new
    ttt.play(0,1)
    ttt.play(0,0)
    ttt.play(1,1)
    ttt.play(0,2)
    ttt.play(2,1).should == "x wins!"
  end

  it "wins in the third column" do
    ttt = TicTacToe.new
    ttt.play(0,2)
    ttt.play(0,0)
    ttt.play(1,2)
    ttt.play(1,1)
    ttt.play(2,2).should == "x wins!"
  end

  it "tells you to keep playing if there no winner" do
    ttt = TicTacToe.new
    ttt.play(0,0).should == 'keep playing!'
  end

end



