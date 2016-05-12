require 'byebug'
#method to populate a board w/ coordinates
def board
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

def players_shot
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

def computer_randshot
  computer_randshot = ('a'..'j').to_a.sample + rand(1..10).to_s
end

def battleship(players_shot, computers_shot)

end


