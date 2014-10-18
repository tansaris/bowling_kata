require "spec_helper"
require "Bowling"   # name of the class we have just created 

describe Bowling do
  before do
    @game = Bowling.new
  end
  it "Gutter @game" do
    20.times {@game.roll 0}
    expect(@game.score).to eq 0
  end
  it "Can roll all 4" do
    20.times {@game.roll 4}
    expect(@game.score).to eq 80
  end
  it "Can roll a spare" do
    @game.roll 4
    @game.roll 6
    @game.roll 4
    17.times {@game.roll 0}
    expect(@game.score).to eq 18
  end
  it "Can roll a strike" do
    @game.roll 10
    @game.roll 6
    @game.roll 3
    17.times {@game.roll 0}
    expect(@game.score).to eq 28
  end
  it "Can roll a perfect game" do
    12.times {@game.roll 10}
    expect(@game.score).to eq 300
  end
  it "Can roll a spare in tenth frame" do
    19.times {@game.roll 1}
    @game.roll 9
    @game.roll 5
    expect(@game.score).to eq 33
  end
end