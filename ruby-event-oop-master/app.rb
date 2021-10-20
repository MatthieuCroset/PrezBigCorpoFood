require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'



player1 = Player.new("Josiane")
player2 = Player.new("José")

puts "Voici l'état de chaque joueur : #{player1.show_state} #{player2.show_state} "




puts "Passons à la phase d'attaque : "

while player1.life_points >0 or player2.life_points >0

player1.attack(player2)

if player1.life_points <=0

    break

else

end

player2.attack(player1)

end 




human1 = HumanPlayer.new("Matt")
puts human1.search_health_pack