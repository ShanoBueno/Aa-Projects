require_relative 'piece'
require_relative 'slideable'

class Queen < Piece

def initialize
  super
  @symbol = :queen
end

def move_dirs
  horizontal_dirs
  diagonal_dirs
end

end