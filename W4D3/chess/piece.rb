class Piece

  def initialize(color, board, pos)
    @color = :color
    @board = Board.new
    @pos = []
  end

  def pos=(value)
    row = value[0]
    col = value[1]
    @pos = [row,col]
  end
 
  def board_Setup

end