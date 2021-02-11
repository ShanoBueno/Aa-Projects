require_relative 'piece'
require_relative 'slideable'

class Rook < Piece

def initialize
  super
  @symbol = :rook
end

def move_dirs
  horizontal_dirs
end

end