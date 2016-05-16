require 'byebug'

def board #method to populate a board w/ coordinates
  count = 0
  count10 = 10
  board = []
  letter = "a"
  100.times do
    count += 1
    case count
    when count..count10
      board << letter + "#{count}"
      count10 += 10 + count
      if count == 10
        count = 0
        letter = letter.next
      end
    end
  end
board.each_slice(10).to_a
end

def players_shot #ask for players shot to eq letter(a..j) to numbers(1..10)
  players_shot = ""
  p "Where would you like to fire?"
  until players_shot =~ /[a-j]\d0?/
    p "Please enter valid coordinates. (e.g A4, b9, J7, f1..)"
    players_shot = gets.chomp.downcase
    if players_shot =~ /[a-j]\d0?/
      p "Firing at #{players_shot.upcase}."
      break
    end
  end
  players_shot
end

def computer_randshot #generate random computer shot
  computer_randshot = ('a'..'j').to_a.sample + rand(1..10).to_s
end

def check_board_comp
  computer_shot = computer_randshot
  computers_board = board
  computers_board.each_with_index do |row, r_index|
    row.each_with_index do |coordinate, c_index|
      if computers_board[r_index][c_index] == computer_shot
        if computers_board[r_index][c_index] != '/'
          computers_board[r_index][c_index] = '/'
        end
      end
    end
  end
  return computers_board
end

def check_board_player
  shot = players_shot
  players_board = board
  players_board.each_with_index do |row, r_index|
    row.each_with_index do |coordinate, c_index|
      if players_board[r_index][c_index] == shot
        players_board[r_index][c_index] = '/'
      end
    end
  end
  players_board
end

def battleship
  p check_board_comp
  p check_board_player

end

p battleship




