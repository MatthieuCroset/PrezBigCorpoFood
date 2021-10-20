require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


puts "------------------------------------------------
|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |
|Le but du jeu est d'être le dernier survivant !|
------------------------------------------------"




    def user 


    puts "Quel est ton prénom ?"
    print ">"
    @prenom = gets.chomp
    human1 = HumanPlayer.new("#@prenom")

    end

    def gamers

    player1 = Player.new("Josiane")
    player2 = Player.new("José")
    ennemy = []
    ennemy << player1
    ennemy << player2

    
    end


    def fighting

        gamer = user
        player1 = gamers[0]
        player2 = gamers[1]

        while gamer.life_points >0 && (player1.life_points > 0 || player2.life_points >0)



            puts "Quelle action veux-tu effectuer ?

             a - chercher une meilleure arme
             s - chercher à se soigner 
        
             attaquer un joueur en vue :
              0 - #{player1.show_state} 
              1 - #{player2.show_state}
             "

              puts "Quel est ton choix"
              print ">"
              result = gets.chomp
   
            if result == "a"

             gamer.search_weapon

             elsif result == "s"

             gamer.search_health_pack

             elsif result == 0.to_s

             gamer.attack(player1)

             elsif result == 1.to_s
            
             gamer.attack(player2)

             end



             puts "Les autres joueurs t'attaquent !"

                 

                   ennemy.each do |i|
                    i.attack(ennemy) 
                    
                    if i.life_points >0 
                        
                    
                    else 
                        
                        break 

                    

                    end 

                end


                
                


             



        end

    end
        
     puts fighting


    

    


