def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  if position_taken?(board,index)
    return false
  elsif index.between?(0, 8) && board = [" "]
    return true
  else
    return false || nil
  end
end

def position_taken?(board,index)
  if board[index] == player 
    return true
  else board[index] == " " || board[index] == "" || board[index] == nil
    return false
  end
end

board = [" "," "," "," "," "," "," "," "," "]
def move(board,input_to_index,player = "X")
  board[input_to_index] = player
  return board
end

board = [" "," "," "," "," "," "," "," "," "]
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets
  input_to_index(user_input)
  index = user_input
  valid_move?(board, index)
end
