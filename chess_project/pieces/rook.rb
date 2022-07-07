require_relative "slideable.rb"
require_relative "piece.rb"
def Rook < Piece
    include Slideable
    attr_reader :symbol
    def initialize
        @symbol = :R
    end

    private
    def move_dirs(pos)
    #     x,y = pos
    #     positions = []
    
    #   (0..7).each do |idx|
    #     positions << [x, idx] if idx != y
    #   end
    
    #   (0..7).each do |idx|
    #     positions << [idx, y] if idx != x
        HORIZONTAL_DIRS
    end

end