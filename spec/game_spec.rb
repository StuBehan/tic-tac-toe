require 'game'

describe Game do

  it "has array with nine items" do
    expect(subject.locations.count).to be(9)
  end

  it "has an empty game board array" do
    expect(subject.game_board).to be_a(Array)
  end

  context "has a visual display for the board" do
    it "the board has columns" do
      expect(subject.ups).to eq "|"
    end
    it "has dividers" do
      expect(subject.rows).to eq "-----------"
    end
  end

  describe "board" do
    it "returns a laid out board" do
      expect(subject.board).to eq " 1 | 2 | 3 \n-----------\n 4 | 5 | 6 \n-----------\n 7 | 8 | 9 "
    end
  end
end
