require 'byebug'
#method to populate a board w/ coordinates
def board
count = 0
board = []

100.times do
  count += 1
  case count
  when (1..10)
    board << "a#{count}"
  when (11..20)
    board << "b#{count-10}"
  when (21..30)
    board << "c#{count-20}"
  when (31..40)
    board << "d#{count-30}"
  when (41..50)
    board << "e#{count-40}"
  when (51..60)
    board << "f#{count-50}"
  when (61..70)
    board << "g#{count-60}"
  when (71..80)
    board << "h#{count-70}"
  when (81..90)
    board << "i#{count-80}"
  when (91..100)
    board << "j#{count-90}"
  end
end
array.each_slice(10).to_a
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


