class Game
  
  attr_accessor :locations
  attr_reader :ups, :rows, :game_board

  def initialize
    @locations = Array.new(9) { |i| i + 1 }
    @ups = "|"
    @rows = "-----------"
    @game_board = []
  end

  def update_board
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

  def move(move = $stdin.gets.chomp)
    move.to_i - 1
  end

  def valid?(index)
    (index.between?(0, 8) && !space_taken?(index))
  end

  def space_taken?(index)
    (@locations[index] == "X" || @locations[index] == "O")
  end

  def player_move
    puts "Make a move on the board:".center(50)
    until valid?(input = move())
      puts "Please make a valid move:".center(50)
    end
    input
  end
end
