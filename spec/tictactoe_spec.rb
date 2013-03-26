require "spec_helper"

describe "Tic Tac Toe" do 
	let(:game) {game = Game.new}
	it 'should return a new game' do
		game.should be_an_instance_of Game
	end
	it 'should define a 3 by 3 board' do
		game.board.should == [['','',''],['','',''],['','','']]
	end

#TESTING FOR PUTTING IN A PIECE IN THE TOP SPOT
	it 'should put a x on the top left spot' do
		game.top(0, 'x').should ==['x','',''] 
	end	
	it 'should put a o on the top middle spot' do
		game.top(1, 'o').should ==['','o',''] 
	end
	it 'should put a x on the top right spot' do
		game.top(2, 'x').should ==['','','x'] 
	end

#TESTING FOR PUTTING IN A PIECE IN THE MIDDLE SPOT
	it 'should put a x on the middle left spot' do
		game.middle(0, 'x').should ==['x','',''] 
	end	
	it 'should put a o on the middle middle spot' do
		game.middle(1, 'o').should ==['','o',''] 
	end
	it 'should put a x on the middle right spot' do
		game.middle(2, 'x').should ==['','','x'] 
	end

#TESTING FOR PUTTING IN A PIECE IN THE BOTTOM SPOT
	it 'should put a x on the top bottom spot' do
		game.bottom(0, 'x').should ==['x','',''] 
	end	
	it 'should put a o on the bottom middle spot' do
		game.bottom(1, 'o').should ==['','o',''] 
	end
	it 'should put a x on the bottom right spot' do
		game.bottom(2, 'x').should ==['','','x'] 
	end	

#TESTING FOR THREE IN A ROW
	it 'should determine if there are three xs in a row' do
		game.top(0, 'x')
		game.top(1, 'x')
		game.top(2, 'x')
		game.three_in_a_row?('x').should == true
	end

	it 'should determine if there are three xs in a row' do
		game.middle(0, 'x')
		game.middle(1, 'x')
		game.middle(2, 'x')
		game.three_in_a_row?('x').should == true
	end

	it 'should determine if there are three xs in a row' do
		game.bottom(0, 'x')
		game.bottom(1, 'x')
		game.bottom(2, 'x')
		game.three_in_a_row?('x').should == true 
	end

#TESTING FOR A WINNER IF THREE IN A ROW
	it 'should determine if there are three xs in a row' do
		game.top(0, 'x')
		game.top(1, 'x')
		game.top(2, 'x')
		game.three_in_a_row('x').should == "Winner x"
	end

	it 'should determine if there are three xs in a row' do
		game.middle(0, 'x')
		game.middle(1, 'x')
		game.middle(2, 'x')
		game.three_in_a_row('x').should == "Winner x"
	end

	it 'should determine if there are three xs in a row' do
		game.bottom(0, 'x')
		game.bottom(1, 'x')
		game.bottom(2, 'x')
		game.three_in_a_row('x').should == "Winner x"
	end

#TESTING FOR THREE IN A COLUMN
	it 'should return true for three in the first column' do
		game.top(0, 'x')
		game.middle(0, 'x')
		game.bottom(0, 'x')
		game.three_in_a_column?('x').should == true
	end
	it 'should return true for three in the second column' do
		game.top(1, 'x')
		game.middle(1, 'x')
		game.bottom(1, 'x')
		game.three_in_a_column?('x').should == true
	end
	it 'should return true for three in the third column' do
		game.top(2, 'x')
		game.middle(2, 'x')
		game.bottom(2, 'x')
		game.three_in_a_column?('x').should == true
	end

#TESTING FOR A WINNER IF THREE IN A COLUMN
	it 'should determine if there is a winner for three xs in a column' do
		game.top(0, 'x')
		game.middle(0, 'x')
		game.bottom(0, 'x')
		game.three_in_a_column('x').should == "Winner x"
	end
	it 'should determine if there is a winner for three xs in a column' do
		game.top(1, 'x')
		game.middle(1, 'x')
		game.bottom(1, 'x')
		game.three_in_a_column('x').should == "Winner x"
	end
	it 'should determine if there is a winner for three xs in a column' do
		game.top(2, 'x')
		game.middle(2, 'x')
		game.bottom(2, 'x')
		game.three_in_a_column('x').should == "Winner x"
	end		

#TESTING FOR THREE IN A DIAGONAL
	it 'should return true for three in a front diagonal' do
		game.top(0, 'x')
		game.middle(1, 'x')
		game.bottom(2, 'x')
		game.three_in_a_diagonal?('x').should == true
	end
	it 'should return true for three in a backwards diagonal' do
		game.top(2, 'x')
		game.middle(1, 'x')
		game.bottom(0, 'x')
		game.three_in_a_diagonal?('x').should == true
	end
	
#TESTING FOR A WINNER IF THREE IN A DIAGONAL
	it 'should determine if there is a winner for three xs in a front diagonal' do
		game.top(0, 'x')
		game.middle(1, 'x')
		game.bottom(2, 'x')
		game.three_in_a_diagonal('x').should == "Winner x"
	end
	it 'should determine if there is a winner for three xs in a front diagonal' do
		game.top(2, 'x')
		game.middle(1, 'x')
		game.bottom(0, 'x')
		game.three_in_a_diagonal('x').should == "Winner x"
	end

#TESTING THAT YOU CANNOT PUT A PIECE ANYWHERE ELSE
	it 'should not allow for a piece to be placed anywhere other than the 3 columns' do
		game.top(3, 'x').should == "Not a valid spot, please put the piece in the 0-2 spot"
	end
	it 'should not allow for a piece to be placed anywhere other than the 3 columns' do
		game.middle(5, 'x').should == "Not a valid spot, please put the piece in the 0-2 spot"
	end
	it 'should not allow for a piece to be placed anywhere other than the 3 columns' do
		game.bottom(-2, 'x').should == "Not a valid spot, please put the piece in the 0-2 spot"
	end		

end


#TESTING For Players
describe "Player" do
	it 'should have two players' do
		player = Player.new
		player.player_1.should == "Would you like to place an X in the top, middle or bottom row?"
		player.player_2.should == "Would you like to place an O in the top, middle or bottom row?"
	end

#TESTING THAT IT GETS A POSITION TO PLACE THE PIECE
	it 'should get an input for the placement of a piece' do
		player.player_1.piece.should == 'x'
	end
end