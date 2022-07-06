require_relative 'pieces'

class Board

    def initialize
        @grid = Array.new(8) {Array.new(8, NullPiece.instance)}
        self.make_grid
    end

    def make_grid
        pieces_arr = [Rook.new,Knight.new,Bishop.new,Queen.new,King.new,Bishop.new,Knight.new,Rook.new]
        # pieces_arr = ["rook","knight","bishop","queen","king","bishop","knight","rook"]

        pieces_arr.each_with_index do |piece,i|
           @grid[0][i] = piece
        end

        pieces_arr.each_with_index do |piece,i|
            @grid[7][i] = piece
        end

        pawns = [Pawn.new,Pawn.new,Pawn.new,Pawn.new,Pawn.new,Pawn.new,Pawn.new,Pawn.new]

        pawns.each_with_index do |piece,i|
            @grid[1][i] = piece
        end
        pawns.each_with_index do |piece,i|              #check if object id are the same
            @grid[6][i] = piece
        end
    end

    def print
        p @grid
    end

    def [](pos)
        @grid[pos[0]][pos[1]]

    end

    def []=(pos,val)
        @grid[pos[0],pos[1]] = val
    end

    def move_piece(color,start_pos,end_pos)

    end

    def valid_pos?(pos)
    end

    def add_piece(piece,pos)
    end

    def checkmate?(color)
    end

    def in_check?(color)
    end

    def find_king(color)
    end

    def pieces
    end

    def dup
    end

    def move_piece!(color,start_pos,end_pos)
    end
    
    
    
end