class Game
  
  attr_accessor :board

  def initialize
    @board = Array.new(9) { |i| i }
  end
end
