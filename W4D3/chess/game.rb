class Game

  def initialize 
    @board = Board.new
    @display = Display.new
    @players = Hash.new {}
  end
end

