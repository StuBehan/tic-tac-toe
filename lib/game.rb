class Game
  
  attr_accessor :locations
  attr_reader :ups, :rows, :game_board

  def initialize
    @locations = Array.new(9) { |i| i + 1 }
    @ups = "|"
    @rows = "-----------"
    @game_board = []
  end

  def board
    @locations.each do |space|
      @game_board << " #{space} " 
      @game_board << @ups
    end
    @game_board.insert(5, "\n", @rows, "\n")
    @game_board.insert(14, "\n", @rows, "\n")
    @game_board.delete_at(8)
    @game_board.delete_at(16)
    @game_board.pop
    @game_board.join
  end
end
