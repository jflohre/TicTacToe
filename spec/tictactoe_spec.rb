require "spec_helper"

describe "Tic Tac Toe" do 
	let(:game) {game = Game.new}
	it 'should return a new game' do
		game.should be_an_instance_of Game
	end
	it 'should define a 3 by 3 board' do
		game.board.should == [['-','-','-'],['-','-','-'],['-','-','-']]
	end

  #TESTING FOR PUTTING IN A PIECE IN THE TOP SPOT
  it 'should put a x on the top left spot' do
    game.set_top(0, 'x').should ==['x','-','-'] 
  end	
  it 'should put a o on the top middle spot' do
    game.set_top(1, 'o').should ==['-','o','-'] 
  end
  it 'should put a x on the top right spot' do
    game.set_top(2, 'x').should ==['-','-','x'] 
  end
  
  #TESTING FOR PUTTING IN A PIECE IN THE MIDDLE SPOT
  it 'should put a x on the middle left spot' do
    game.set_middle(0, 'x').should ==['x','-','-'] 
  end	
  it 'should put a o on the middle middle spot' do
    game.set_middle(1, 'o').should ==['-','o','-'] 
  end
  it 'should put a x on the middle right spot' do
    game.set_middle(2, 'x').should ==['-','-','x'] 
  end
  
  #TESTING FOR PUTTING IN A PIECE IN THE BOTTOM SPOT
  it 'should put a x on the top bottom spot' do
    game.set_bottom(0, 'x').should ==['x','-','-'] 
  end	
  it 'should put a o on the bottom middle spot' do
    game.set_bottom(1, 'o').should ==['-','o','-'] 
  end
  it 'should put a x on the bottom right spot' do
    game.set_bottom(2, 'x').should ==['-','-','x'] 
  end	
  
  #TESTING FOR THREE IN A ROW
  it 'should determine if there are three xs in a row' do
    game.set_top(0, 'x')
    game.set_top(1, 'x')
    game.set_top(2, 'x')
    game.three_in_a_row?('x').should == true
  end
  
  it 'should determine if there are three xs in a row' do
    game.set_middle(0, 'x')
    game.set_middle(1, 'x')
    game.set_middle(2, 'x')
    game.three_in_a_row?('x').should == true
  end
  
  it 'should determine if there are three xs in a row' do
    game.set_bottom(0, 'x')
    game.set_bottom(1, 'x')
    game.set_bottom(2, 'x')
    game.three_in_a_row?('x').should == true 
  end
  
  #TESTING FOR A WINNER IF THREE IN A ROW
  it 'should determine if there are three xs in a row' do
    game.set_top(0, 'x')
    game.set_top(1, 'x')
    game.set_top(2, 'x')
    game.three_in_a_row('x').should == "Winner x"
  end
  
  it 'should determine if there are three xs in a row' do
    game.set_middle(0, 'x')
    game.set_middle(1, 'x')
    game.set_middle(2, 'x')
    game.three_in_a_row('x').should == "Winner x"
  end
  
  it 'should determine if there are three xs in a row' do
    game.set_bottom(0, 'x')
    game.set_bottom(1, 'x')
    game.set_bottom(2, 'x')
    game.three_in_a_row('x').should == "Winner x"
  end
  
  #TESTING FOR THREE IN A COLUMN
  it 'should return true for three in the first column' do
    game.set_top(0, 'x')
    game.set_middle(0, 'x')
    game.set_bottom(0, 'x')
    game.three_in_a_column?('x').should == true
  end
  it 'should return true for three in the second column' do
    game.set_top(1, 'x')
    game.set_middle(1, 'x')
    game.set_bottom(1, 'x')
    game.three_in_a_column?('x').should == true
  end
  it 'should return true for three in the third column' do
    game.set_top(2, 'x')
    game.set_middle(2, 'x')
    game.set_bottom(2, 'x')
    game.three_in_a_column?('x').should == true
  end
  
  #TESTING FOR A WINNER IF THREE IN A COLUMN
  it 'should determine if there is a winner for three xs in a column' do
    game.set_top(0, 'x')
    game.set_middle(0, 'x')
    game.set_bottom(0, 'x')
    game.three_in_a_column('x').should == "Winner x"
  end
  it 'should determine if there is a winner for three xs in a column' do
    game.set_top(1, 'x')
    game.set_middle(1, 'x')
    game.set_bottom(1, 'x')
    game.three_in_a_column('x').should == "Winner x"
  end
  it 'should determine if there is a winner for three xs in a column' do
    game.set_top(2, 'x')
    game.set_middle(2, 'x')
    game.set_bottom(2, 'x')
    game.three_in_a_column('x').should == "Winner x"
  end		
  
  #TESTING FOR THREE IN A DIAGONAL
  it 'should return true for three in a front diagonal' do
    game.set_top(0, 'x')
    game.set_middle(1, 'x')
    game.set_bottom(2, 'x')
    game.three_in_a_diagonal?('x').should == true
  end
  it 'should return true for three in a backwards diagonal' do
    game.set_top(2, 'x')
    game.set_middle(1, 'x')
    game.set_bottom(0, 'x')
    game.three_in_a_diagonal?('x').should == true
  end

  #TESTING FOR A WINNER IF THREE IN A DIAGONAL
  it 'should determine if there is a winner for three xs in a front diagonal' do
    game.set_top(0, 'x')
    game.set_middle(1, 'x')
    game.set_bottom(2, 'x')
    game.three_in_a_diagonal('x').should == "Winner x"
  end
  it 'should determine if there is a winner for three xs in a front diagonal' do
    game.set_top(2, 'x')
    game.set_middle(1, 'x')
    game.set_bottom(0, 'x')
    game.three_in_a_diagonal('x').should == "Winner x"
  end
  
  #TESTING THAT YOU CANNOT PUT A PIECE ANYWHERE ELSE
  it 'should not allow for a piece to be placed anywhere other than the 3 columns' do
    game.set_top(3, 'x').should == "Not a valid spot, please put the piece in the 0-2 spot"
  end
  it 'should not allow for a piece to be placed anywhere other than the 3 columns' do
    game.set_middle(5, 'x').should == "Not a valid spot, please put the piece in the 0-2 spot"
  end
  it 'should not allow for a piece to be placed anywhere other than the 3 columns' do
    game.set_bottom(-2, 'x').should == "Not a valid spot, please put the piece in the 0-2 spot"
  end	

  #TESTING THAT YOU CAN PRINT THE BOARD
  it 'should print the board' do
    game1 = Game.new
    game1.set_top(0, 'x') 
    game1.set_middle(1, 'o')
    game1.board.should == [['x','-','-'],['-','o','-'],['-','-','-']]
  end

#TESTING FOR PLAYERS
	it 'should have two players' do
		#game.player_1.should == "Player 1, would you like to place an X in the top, middle or bottom row?"
   # game.player_1.gets.chomp.should ==
#		STDIN.stub!(:gets).and_return('top')
 #   game.player_2.should == "top"
	end

  it 'should be a stalemate if the board is [x,o,x],[x,o,o],[o,x,x]' do
    game.set_top(0, 'x')
    game.set_top(1, 'o')
    game.set_top(2, 'x')
    
    game.set_middle(0, 'x')
    game.set_middle(1, 'o')
    game.set_middle(2, 'o')

    game.set_bottom(0, 'o')
    game.set_bottom(1, 'x')
    game.set_bottom(2, 'x')

    game.stalemate.should == "Stalemate"
  end

  it "should return a count of x's and o's for top" do
    game.set_top(0,'x')
    game.set_top(1,'o')
    game.top_count.should == 1
  end
  it "should return a count of x's and o's for middle" do
    game.set_middle(0,'x')
    game.set_middle(1,'o')
    game.middle_count.should == 1
  end
  it "should return a count of x's and o's for bottom" do
    game.set_bottom(0,'x')
    game.set_bottom(1,'o')
    game.bottom_count.should == 1
  end
  it 'should return false for a board with open spaces' do
    game.set_bottom(0,'x')
    game.set_middle(0,'o')
    game.set_top(0,'x')
    game.open_spaces.should == 6
  end

  it 'should have describe a next turn if the board is not full and there is no winner' do
    game.set_top(1,'x')
    game.set_bottom(2,'o')
    #game.next_turn.should == "next"
    game.play('o').should == "next"
  end


end
