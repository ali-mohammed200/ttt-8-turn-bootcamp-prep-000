def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts ("-----------")
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts ("-----------")
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(num)
  return num.to_i-1
end

def valid_move?(board, ind)
  if((board[ind] != "X" && board[ind] != "O") && ind.between?(0, 8))
    return true
  end
  return false
end

def move(board, ind, symbol = "X")
  if(valid_move?(board, ind))
    board[ind] = symbol
  end
  return display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  val = gets.chomp
  val = input_to_index(val)
  until (val.between?(1,9))
    turn(board)
  end
  move(board, val)
end
