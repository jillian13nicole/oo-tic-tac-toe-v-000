# Define TicTacToe Board
class TicTacToe
  def initialize (board = nil)
    @board = board || Array.new(9, " ")
  end

#Enter winning combos 
WIN_COMBINATIONS = [ [0, 1, 2], # Top row 
                   [3, 4, 5], # Middle row
                   [6, 7, 8], # Bottom row
                   [0, 4, 8], # Cross left 
                   [2, 4, 6], # Cross right
                   [0, 3, 6], # Left column 
                   [1, 4, 7], # Center column
                   [2, 5, 8], # Right column
                   ]
                   
#Displaying Board
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
#Inputting User Input
  def input_to_index(user_input)
    user_input.to_i - 1
  end
  
#Defining the Move Method 
  def move(index, token)
    @board[index] = token
  end
  
#Defining Position Taken
  def position_taken?(index)
    @board[index] != " "
  end

#Defining Valid move
  def valid_move?(index)
    index.between?(0,8) && !position_taken?(index)
  end
  
#Defining Turn Count

  
#Defining Turn 
def turn
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(index)
    move(index)
    display_board(index)
  else
    turn(index)
  end
end
end