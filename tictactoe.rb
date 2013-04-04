class Game
	attr_accessor :top, :middle, :bottom, :board
	
	def initialize
		@top = ['-','-','-']
		@middle = ['-','-','-']
		@bottom = ['-','-','-']
		@board = [@top, @middle, @bottom]
	end

	def board
    print "\n"
    board =[@top, @middle, @bottom]
	end

	def play(piece)
    if three_in_a_row?(piece)
      three_in_a_row(piece)
    elsif three_in_a_column?(piece)
      three_in_a_column(piece)
    elsif three_in_a_diagonal(piece)
      three_in_a_diagonal(piece)
    elsif open_spaces  < 1
      stalemate
    else
      next_turn
    end    
  end
  
  def next_turn
    "next"
  end

  def open_spaces
     board_count = (top_count + middle_count + bottom_count)
  end

  def top_count
    top_count = @top.count('-')
  end
  
  def  middle_count
    middle_count = @middle.count('-')
  end
  
  def bottom_count
    bottom_count = @bottom.count('-')
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
  
  def stalemate
      "Stalemate"
  end

  #PUTTING PIECES IN THEIR ARRAYS
  def set_top(position, piece)
    if position < 0 || position > 2
      "Not a valid spot, please put the piece in the 0-2 spot" 
    else
      @top.delete_at(position)
      @top.insert(position, piece)
    end
  end 

  def set_middle(position, piece)
    if position < 0 || position > 2
      "Not a valid spot, please put the piece in the 0-2 spot" 
    else    
      @middle.delete_at(position)
      @middle.insert(position, piece)
    end
  end
  
  def set_bottom(position, piece)
    if position < 0 || position > 2
      "Not a valid spot, please put the piece in the 0-2 spot" 
    else
      @bottom.delete_at(position)
      @bottom.insert(position, piece)
    end
  end 

	def three_in_a_row?(piece)
		@top.count(piece) == 3 || @middle.count(piece) == 3 || @bottom.count(piece) == 3
	end

	def three_in_a_column?(piece)
		@top[0].include?(piece) && @middle[0].include?(piece) && @bottom[0].include?(piece) ||
		@top[1].include?(piece) && @middle[1].include?(piece) && @bottom[1].include?(piece) ||
		@top[2].include?(piece) && @middle[2].include?(piece) && @bottom[2].include?(piece)
	end

	def three_in_a_diagonal?(piece)
		@top[0].include?(piece) && @middle[1].include?(piece) && @bottom[2].include?(piece) ||
		@top[2].include?(piece) && @middle[1].include?(piece) && @bottom[0].include?(piece)
	end


  def player_1
    "Player 1, would you like to place an X in the top, middle or bottom row?"
    row = gets.chomp
    #"What position would you like to place it? left, middle or right?"
    #column = gets.chomp
    #Then we call the position method on it
    #Then we see if there is a winner, if no winner we call player_2
    #check if its top/bottom/middle and call the method
  end

  def player_2
    "Player 2, would you like to place an O in the top, middle or bottom row?"
  #  row = gets.chomp
    #{}"What position would you like to place it? left, middle or right?"
    #column = gets.chomp
    #Then we call the position method on it
    #Then we see if there is a winner, if no winner we call player_1
  end

end