class Player

    attr_accessor :name, :life_points


    def initialize (name)

        @name = name.to_s
        @life_points = 10

    end

    def show_state

        "#{@name} a #{@life_points} points."

    end

    def gets_damage (life_points)
        
        @life_points = @life_points - life_points

        if @life_points <=0

            puts "Le joueur #{@name} a été tué !"

        else 

            return "#{@name} a #{@life_points} points."

        end

    end

    def attack (player)

       damage = compute_damage

        print "Le joueur #{@name} attaque le joueur #{player.name}."
        player.gets_damage(damage)
        print "Il lui fait perdre #{damage}."

    end

    def compute_damage

       return rand(1..6)

    end

end



class HumanPlayer < Player

    attr_accessor :weapon_level

    def initialize (name)
        
        self.name = name
        @life_points = 100
        @weapon_level = 1
        

    end

    def show_state

        "#{self.name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}."

    end


    def compute_damage
        rand(1..6) * @weapon_level
      end


    def search_weapon

    
        @dice_lauch = rand(1..6)

        puts "Tu as trouvé une arme de niveau #{@dice_lauch}."


        if @dice_lauch > @weapon_level

            @weapon_level == @dice_lauch

            puts "Youhou ! Elle est meilleure que ton arme actuelle : tu la prends."

        else @dice_lauch <= @weapon_level

            puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."

        end

    end


    def search_health_pack

        @dice_lauch_life = rand(1..6)

        if @dice_lauch_life == 1
            

            puts "Tu n'as rien trouvé... "
            

        elsif @dice_lauch_life >=2 && @dice_lauch_life <=5 
            
            @life_points = (@life_points + 50).clamp(0, 100)

            puts "Bravo, tu as trouvé un pack de +50 points de vie !"

        elsif @dice_lauch_life == 6 
            
            @life_points = (@life_points + 80).clamp(0, 100)

            puts "Waow, tu as trouvé un pack de +80 points de vie !"


        end 





    end 


end
