require_relative 'piece'
require_relative 'stepable'

class Knight < Piece

def initialize
  super
  @symbol = :knight
end

def move_diffs
  moves = [[2,1],[-2,1],[1,2],[-1,2],[-1,-2],[-2,-1],[2,-1],[1,-2]]
end

end

