module Slideable

    HORIZONTAL_DIRS = [
        [0,1],
        [1,0],
        [-1,0],
        [0,1]
    ]
    DIAGONAL_DIRS = [
        [1,1],
        [1,-1],
        [-1,1],
        [-1,-1]       
    ]

    def initialize
   
    end

    def move_dirs
        raise "make sure to include move_dirs"
    end
    
    def moves 
        new_arr =[]
        move_dirs.each do |subArray|
            new_arr += grow_unblocked_moves_in_dir(subArray[0],subArray[1])
        end
        new_arr 
    end

    def grow_unblocked_moves_in_dir(dx,dy)
        row,col = self.pos
        new_pos = [row+dx, col+dy]
        row,col = new_pos
        
        new_arr = []
        x = true
        while x
            if !((0..7) === row || (0..7) === col)
                break
            elsif !new_pos.empty?
                if board[pos].color != self.color
                    new_arr << new_pos
                    break
                elsif board[pos].color == self.color
                    break
                end
            else 
                if ((0..7) === row && (0..7) === col)
                    new_arr << new_pos
                end
           end
            row += dx
            col += dx
            new_pos = [row,col]
        end
        new_arr
            
    end

    def valid_pos(pos)
    
        return false if !(board[pos].empty? && board[pos].color != self.color)

        row,col = pos
        return false if !((0..7) === row || (0..7) === col)

        return true
        
    end
    
    
end