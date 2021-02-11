require_relative 'piece'
require_relative 'slideable'

class Bishop < Piece

def initialize
  super
  @symbol = :bishop
end

def move_dirs
  diagonal_dirs
end

end