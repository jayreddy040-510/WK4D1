require_relative "piece.rb"
require_relative "slideable.rb"
def Bishop < Piece
    include Slideable

    attr_reader :B
    def initialize(color,board,position)
        super
        @symbol = :B
    end



    def move_dirs
        DIAGONAL_DIRS
    end

end