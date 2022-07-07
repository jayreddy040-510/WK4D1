require_relative "piece.rb"
require_relative "slideable.rb"

def Queen < Piece
    include Slideable

    attr_reader :Q
    def initialize(color,board,position)
        super
        @symbol = :Q
    end


    def move_dirs
        DIAGONAL_DIRS + HORIZONTAL_DIRS
    end

end