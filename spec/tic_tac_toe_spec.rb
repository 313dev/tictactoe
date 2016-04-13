require 'tic_tac_toe'
require 'spec_helper'


describe "tic tac toe" do

  it "starts with an empty board" do
    ttt = TicTacToe.new
    expect(ttt.board).to eq(pretty(
      " - - -
        - - -
        - - -
      "))
  end

  it "plays an X first" do
    ttt = TicTacToe.new
    ttt.play(0,0)
    expect(ttt.board).to eq(pretty(
      " X - -
        - - -
        - - -
      "))
  end

  it "plays an O second" do
    ttt = TicTacToe.new
    ttt.play(0,0)
    ttt.play(0,1)
    expect(ttt.board).to eq(pretty(
      " X O -
        - - -
        - - -
      "))
  end

  it "plays an X third" do
    ttt = TicTacToe.new
    ttt.play(0,0)
    ttt.play(0,1)
    ttt.play(0,2)
    expect(ttt.board).to eq(pretty(
      " X O X
        - - -
        - - -
      "))
  end

  it "tells you to keep playing if there no winner" do
    ttt = TicTacToe.new
    expect(ttt.play(0,0)).to eq('keep playing!')
  end

end



