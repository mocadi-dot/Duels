require 'pry'
# joueurs, ou joueur 1 et joueur 2?
class Player
  attr_accessor :name, :life_points

  def initialize(name) # initialisation du nom et points de vie
      @name = name
      @life_points = 10
  end



  #Les Méthodes

  #Méthode 1 L'état du joueur

  def show_state #défini l'affichage des points de vie du joueur
        puts "#{@name} a #{@life_points} points de vie restant"
  end

  #Méthode 2 Les dégats reçus

  def gets_damage(degats)       #dégats reçus
    @life_points -= degats
    if @life_points <= 0
      puts "le joueur #{@name} est mort !"
    end
  end
  #Méthode 3 Les attaques

  def attacks(player)
      puts "Le courageux #{@name} attaque avec vigueur #{player.name} !"
  #il faut que je fasse appel à la méthode compute_damage
      degats = compute_damage
      puts "Le sanguinaire combattant a infligé #{degats} points de dommages."
      player.gets_damage(degats)
  end

  #Méthode 4 compute_damage

  def compute_damage
    return rand(1..6)
  end

end


class HumanPlayer < Player    # héritage de la classe Player
  attr_accessor :weapon_level

  def initialize(player_name)
    @weapon_level = 1
        super
    @life_points = 100

  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
  end

  def compute_damage
     rand(1..6) * @weapon_level
   end
