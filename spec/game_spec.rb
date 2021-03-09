require 'game'

describe Game do

  it "has a game board of 9 spaces" do
    expect(subject.board.count).to be(9)
  end
end
