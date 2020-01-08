#!/usr/bin/ruby

# Federation Francaise des Jeux Mathematiques (FFJM)
# Quart de Finale 2020
# https://www.ffjm.org/upload/fichiers/QuartsdeFinale/Quartsdefinale2020couleur.pdf
#
# License: GNU LGPLv3
#  https://choosealicense.com/licenses/lgpl-3.0/
#
# Author: Eric Bouchut
#

# Exercice numero 11
# 
# 11 - DEUX FOIS OOUUI … (coefficient 11)
# (OUI)^2 = 2 × OOUUI
# Dans cette opération codée, une même lettre remplace toujours
# le même chiffre et un même chiffre est toujours remplacé 
# par la même lettre. Que vaut OUI ?

digits   = (0..9).to_a

digits.permutation(3) do |triplet| 
  o = triplet[0]
  u = triplet[1]
  i = triplet[2]

  oui   = triplet.join('').to_i
  oouui = [o, o, u, u, i].join('').to_i
  
  if oui ** 2  ==   2 * oouui
	puts "OUI = #{oui}"
	puts  "%03d^2 = 2 * %05d"  % [oui, oouui]
  end
end
