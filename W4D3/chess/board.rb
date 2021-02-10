require_relative 'piece'

class Board

  def initialize
   @board = Array.new(8) { Array.new(8,[]) }

  end
def []

end
  def []=(pos,val)

 @grid[pos]= value
  end
  
  def add_piece(piece, pos)
    self[0].each do |square|
      Piece.new(:black, Board, self.square)
    end
    self[1].each do |square|
      Piece.new(:black, Board, square)
    end
    end
  end


end