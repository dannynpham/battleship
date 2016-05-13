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

def search_board_comp #checks board if computer shot there if so generate new coordinates
  search = board.join
  if search.include?(computer_randshot)
    return computer_shot
  else
    computer_randshot
  end
end

def search_board_player #checks board if player has shot there if so let them know and ask for new coordinates
  search = board.join
  return players_shot if search.include?(players_shot)
  p "You've already shot there."
  players_shot
end
p search_board_player

def shots #takes shots from player & computer and if valid change the coordinates to either X or O

#    board.each do |coordinates|
#      coordinates = "X||O"
#    end
end

def battleship(players_shot, computers_shot)
  new_game = board
  p new_game
end

p search_board_player


