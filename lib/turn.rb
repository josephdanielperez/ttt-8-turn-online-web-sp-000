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
  if index == 0
    return true
  else index != 0
    return false
  end
end

def move(board, index, player = "X")
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip

  index = input_to_index(user_input)

  if valid_move?(board, index) == false
    turn(board)
  else valid_move?(board,index) == true
    move(board, index, player)
  end
end

def position_taken?(board, index)
  if (board[index] == "X") || (board[index] == "O")
    return true
  elsif index == 0
    return false
  elsif index != 0
    return false
  end
end
