# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
]

def won?(board)
winner = []
  WIN_COMBINATIONS.each do |win_array|
    if win_array.all? do |win_index|
      board[win_index] = "X"
      winner = win_array
    elsif win_array.all? do |win_index|
      board[win_index] = "O"
      winner = win_array
    end 
    end
    return false
  end
  return winner
end
