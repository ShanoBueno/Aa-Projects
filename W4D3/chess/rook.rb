require_relative 'piece'

class Rook < Piece

def initialize
  super
  @symbol = :rook
end

def move_dirs
 directions = [
   [1,0],
   [-1,0],
   [0,1],
   [0,-1]
 ]
 
end

end