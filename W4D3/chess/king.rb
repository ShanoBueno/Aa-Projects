require_relative 'piece'
require_relative 'stepable'

class King < Piece

def initialize
  super
  @symbol = :king
end

def move_diffs
 moves = [[1,0],[-1,0],[0,1],[0,-1],[-1,1],[1,1],[1,-1],[-1,-1]]
end

end