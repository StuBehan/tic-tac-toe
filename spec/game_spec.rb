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

  describe "update_board" do
    it "returns a laid out board" do
      expect(subject.update_board).to eq " 1 | 2 | 3 \n-----------\n 4 | 5 | 6 \n-----------\n 7 | 8 | 9 "
    end
  end

  describe "move" do
    it "gets the players move" do
      allow($stdin).to receive(:gets) { "4" } # stubbing STDIN otherwise it calls for input
      expect(subject.move).to be(3)
    end
  end

  describe "valid?" do
    it "checks if the user input is valid and finds true" do
      expect(subject.valid?(5)).to be true
    end
    it "checks if the user input is valid and finds false" do
      expect(subject.valid?(12)).to be false
    end
  end

  describe "space_taken?" do 
    it "checks if the players space is taken" do
      expect(subject.space_taken?(2)).to be false
    end
  end

  describe "player_move" do
    before do
      allow($stdout).to receive(:write)
    end

    it "fails an incorrect player move and then validates a second correct move entry" do
      allow($stdin).to receive(:gets).and_return("20", "4")  # Stubbing the move method which calls for input
      expect(subject.player_move).to be(3)
    end
    it "prints out prompts for moves" do
      allow($stdin).to receive(:gets).and_return("1")
      expect { subject.player_move }.to output.to_stdout
    end
  end
end
