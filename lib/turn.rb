def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, input)
  if ((board[input] != " ") || input < 9 && input > -1)
    puts false
    return false
  end
  return true
end

def input_to_index(num)
  num = num.to_i - 1
  return num
end

def move(board, input, symbol = "X")
  if (valid_move?(board, input))
    board[input] = symbol
  end
  return display_board(board)
end
