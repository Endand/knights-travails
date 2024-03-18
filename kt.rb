#take start and end as array of two numbers to represent coordinate
#return the shortest t o get from start to end
def knight_moves(start_pos,end_pos)
   path=[start]
end

#see if spot is within the board
def in_board?(spot)
   x,y=spot
   x<0 || x> 7 || y<0 || y>7 ? false : true
end

#returns possible spot to move to from current position
def poss_moves(spot)
   moves=[[1,2],[2,1],[-1,2],[-2,1],[-1,-2],[-2,-1],[1,-2],[2,-1]]
   x,y=spot
   poss=[]
   moves.each do |move|
      a,b=move
      new_spot=[x+a,y+b]
      if in_board?(new_spot)
         poss << new_spot
      end
   end
   poss
end

p poss_moves([0,0])