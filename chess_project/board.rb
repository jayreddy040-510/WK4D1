require_relative 'pieces'

class Board
attr_reader :grid
    def initialize
        @grid = Array.new(8) {Array.new(8, NullPiece.instance)}
        self.make_grid
    end

    def make_grid
        pieces = [Rook,
            Knight,
            Bishop,
            Queen,
            King,
            Bishop,
            Knight,
            Rook]

        #first row
        pieces.each_with_index do |piece,i|
           @grid[0][i] = piece.new(:white,self, [0,i])
        end

        pieces.each_with_index do |piece,i|
            @grid[7][i] = piece.new(:black,self, [7,i])
        end

        pawns = [Pawn,
            Pawn,
            Pawn,
            Pawn,
            Pawn,
            Pawn,
            Pawn,
            Pawn]

        pawns.each_with_index do |piece,i|
            @grid[1][i] = piece.new(:black,self, [1,i] )
        end
        pawns.each_with_index do |piece,i|              #check if object id are the same
            @grid[6][i] = piece.new(:white,self, [6,i] )
        end

        (2..5).each do |row|
            (0..7).each do |i|
                grid[row][i] = NullPiece.instance
            end
        end

        @grid
    end


    # def render #refactor
    #     @grid.each do |subArray|
    #         subArray.each do |piece|
    #             puts piece.color 
    #         end
    #     end

    # end

    def [](pos)
        @grid[pos[0]][pos[1]]

    end

    def []=(pos,val)
        @grid[pos[0],pos[1]] = val
    end

    # def move_piece(start_pos,end_pos)
    #     #if start to end valid move, then set start position to null.instance, and bracket method end position to piece and change piece's position to end value

    #     #if start_pos == null.instance, raise error
    #     #if start to end is not a valid move, raise error
    #     row1,col1 = start_pos
    #     col1,col2 = end_pos

    #     if @grid[row1][row2]
    #     if @grid[row2][col2] == NullPiece.instance

    #     #is end position in move array, and in valid move arr
    #     end

    # end

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

    def move_piece!(color, start_pos,end_pos)
        
    end
    
    
    
end