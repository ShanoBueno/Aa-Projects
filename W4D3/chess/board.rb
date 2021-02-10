require_relative 'piece'
require_relative 'rook'

class Board

  def initialize
   @board = Array.new(8) { Array.new(8,nil) }

  end
def [](pos)
  row, col = pos
  @board[row][col]
end

def []=(pos,val)
  row, col = pos
  @board[row][col] = val
end

# def add_piece(piece, pos)
#     self[pos] 
# end

def pieces
  @board[0].each_with_index do |ele,idx|
    @board[0][idx]= Rook.new(:white, self, [0][idx])
  end
  @board[1].each_with_index do |ele, idx|
    @board[1][idx]= Piece.new
  end
  @board[6].each_with_index do |ele, idx|
    @board[6][idx]= Piece.new
  end
  @board[7].each_with_index do |ele, idx|
    @board[7][idx]= Piece.new
  end
end

def move_piece(start_pos, end_pos)
    self[end_pos]= Piece.new
    self[start_pos]= nil
  end
end








# def valid_pos?(pos)
#   if pos[0] >= 0 && pos[0] <= 7 && pos[1] >= 0 && pos[1] <= 7
#     return true
#   else
#     return false
#   end
# end



