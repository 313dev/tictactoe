require 'tic_tac_toe'
require 'spec_helper'


describe "tic tac toe" do

  describe "order of play" do
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

    it "tells you to keep playing if there no winner" do
      ttt = TicTacToe.new
      ttt.play(0,0).should == 'keep playing!'
    end
  end

  describe "legal spaces" do
    it "must not play somewhere that X has alread played" do
      ttt = TicTacToe.new
      ttt.play(0,0)
      ttt.play(0,0).should == 'X has already played in that space!'
    end

    it "must not play somewhere that O has alread played" do
      ttt = TicTacToe.new
      ttt.play(0,0)
      ttt.play(0,1)
      ttt.play(0,1).should == 'O has already played in that space!'
    end
  end

  describe "X winning" do
    it "across the top" do
      ttt = TicTacToe.new
      ttt.play(0,0)
      ttt.play(1,0)
      ttt.play(0,1)
      ttt.play(2,0)
      ttt.play(0,2).should == "X wins!"
    end

    it "across the middle" do
      ttt = TicTacToe.new
      ttt.play(1,0)
      ttt.play(0,0)
      ttt.play(1,1)
      ttt.play(0,1)
      ttt.play(1,2).should == "X wins!"
    end

    it "across the bottom" do
      ttt = TicTacToe.new
      ttt.play(2,0)
      ttt.play(0,0)
      ttt.play(2,1)
      ttt.play(0,1)
      ttt.play(2,2).should == "X wins!"
    end

    it "in the first column" do
      ttt = TicTacToe.new
      ttt.play(0,0)
      ttt.play(0,1)
      ttt.play(1,0)
      ttt.play(0,2)
      ttt.play(2,0).should == "X wins!"
    end

    it "in the second column" do
      ttt = TicTacToe.new
      ttt.play(0,1)
      ttt.play(0,0)
      ttt.play(1,1)
      ttt.play(0,2)
      ttt.play(2,1).should == "X wins!"
    end

    it "in the third column" do
      ttt = TicTacToe.new
      ttt.play(0,2)
      ttt.play(0,0)
      ttt.play(1,2)
      ttt.play(1,1)
      ttt.play(2,2).should == "X wins!"
    end

    it "diagonally top left to bottom right" do
      ttt = TicTacToe.new
      ttt.play(0,0)
      ttt.play(1,0)
      ttt.play(1,1)
      ttt.play(2,0)
      ttt.play(2,2).should == "X wins!"
    end

    it "diagonally top right to bottom left" do
      ttt = TicTacToe.new
      ttt.play(0,2)
      ttt.play(1,0)
      ttt.play(1,1)
      ttt.play(2,1)
      ttt.play(2,0).should == "X wins!"
    end
  end

  describe "O winning" do
    it "across the top" do
      ttt = TicTacToe.new
      ttt.play(2,0)
      ttt.play(0,0)
      ttt.play(2,1)
      ttt.play(0,1)
      ttt.play(1,1)
      ttt.play(0,2).should == "O wins!"
    end

    it "in the first column" do
      ttt = TicTacToe.new
      ttt.play(2,2)
      ttt.play(0,0)
      ttt.play(2,1)
      ttt.play(1,0)
      ttt.play(1,1)
      ttt.play(2,0).should == "O wins!"
    end

    it "diagonally top left to bottom right" do
      ttt = TicTacToe.new
      ttt.play(0,1)
      ttt.play(0,0)
      ttt.play(2,1)
      ttt.play(1,1)
      ttt.play(1,2)
      ttt.play(2,2).should == "O wins!"
    end
  end
end
