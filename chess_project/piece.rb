class Piece
    attr_reader :color, :board, :pos
    def initialize(color,board,pos)
        @color = color
        @board = board
        @pos = pos
    end

    def to_s

    end

    def empty?(position)
        row,col = position
        if board[row][col] == NullPiece.instance
            true
        else
            false
        end
    end

    def valid_moves
        
    end


end