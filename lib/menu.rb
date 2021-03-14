class Menu

  def initialize
    game = Game.new
  end

  def ascii_render
    print(File.read("./lib/banner.txt"))
  end

  def print_menu
    print "\n
           Please make a selection
           -----------------------
           1. New game
           2. Exit\n".center(50)
  end

  def menu
    selection = $stdin.gets.chomp.to_i
  #   case selection
  #   when 1 then game.move
  #   when 2 then exit(0)
  #   end
  end
end
