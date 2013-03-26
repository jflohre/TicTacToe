class Game
	attr_accessor :top, :middle, :bottom, :board
	
	def initialize
		@top = ['','','']
		@middle = ['','','']
		@bottom = ['','','']
		@board = [@top, @middle, @bottom]
	end

	def board()
    @board
	end
	
	def three_in_a_row(piece)
		if three_in_a_row?(piece)
			"Winner #{piece}"
		end
	end

	def three_in_a_column(piece)
		if three_in_a_column?(piece)
			"Winner #{piece}"
		end			
	end

	def three_in_a_diagonal(piece)
		if three_in_a_diagonal?(piece)
			"Winner #{piece}"
		end
	end

  #PUTTING PIECES IN THEIR ARRAYS
  def top(position, piece)
    if position < 0 || position > 2
      "Not a valid spot, please put the piece in the 0-2 spot" 
    else
      @top.delete_at(position)
      @top.insert(position, piece)
    end
  end 
  def middle(position, piece)
    if position < 0 || position > 2
      "Not a valid spot, please put the piece in the 0-2 spot" 
    else    
      @middle.delete_at(position)
      @middle.insert(position, piece)
    end
  end
  def bottom(position, piece)
    if position < 0 || position > 2
      "Not a valid spot, please put the piece in the 0-2 spot" 
    else
      @bottom.delete_at(position)
      @bottom.insert(position, piece)
    end
  end 

#TESTING FOR THREE IN A ROW
	def three_in_a_row?(piece)
		@top.count(piece) == 3 || @middle.count(piece) == 3 || @bottom.count(piece) == 3
	end

#TESTING FOR THREE IN A COLUMN
	def three_in_a_column?(piece)
		@top[0].include?(piece) && @middle[0].include?(piece) && @bottom[0].include?(piece) ||
		@top[1].include?(piece) && @middle[1].include?(piece) && @bottom[1].include?(piece) ||
		@top[2].include?(piece) && @middle[2].include?(piece) && @bottom[2].include?(piece)
	end

#TESTING FOR THREE IN A DIAGONAL
	def three_in_a_diagonal?(piece)
		@top[0].include?(piece) && @middle[1].include?(piece) && @bottom[2].include?(piece) ||
		@top[2].include?(piece) && @middle[1].include?(piece) && @bottom[0].include?(piece)
	end

  #GOING TO NEED A TEST FOR STALEMATES 
  #GOING TO NEED A TEST FOR A PIECE ALREADY THERE
end

class Player

  def player_1
    "Would you like to place an X in the top, middle or bottom row?"
    row = gets.chomp
    #"What position would you like to place it? left, middle or right?"
    #column = gets.chomp
    #Then we call the position method on it
    #Then we see if there is a winner, if no winner we call player_2
  end

  def player_2
    "Would you like to place an O in the top, middle or bottom row?"
    row = gets.chomp
    #{}"What position would you like to place it? left, middle or right?"
    #column = gets.chomp
    #Then we call the position method on it
    #Then we see if there is a winner, if no winner we call player_1
  end


end