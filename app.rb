require 'bundler'
require 'pry'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("The Dark Knight")
player2 = Player.new("Princess Zelia")

while player1.life_points > 0 && player2.life_points >0 do
  puts "
 -----------
 "

 puts "Voici l'état des combattants :"
 player1.show_state
 player2.show_state

 puts "
 ---
 "

 puts "Luttez ou mourrez :"

 player1.attacks(player2) # player 1 attaque
 if player2.life_points <= 0 # pas de mort-vivants
   break
 end
 player2.attacks(player1) # player 2 attaque

end
