class Menu

  def initialize
    ascii_render
  end

  def ascii_render
    print(File.read("./lib/banner.txt"))
  end
end
