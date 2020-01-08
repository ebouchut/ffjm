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

# Exercice 6 - UNE ANNÉE HEUREUSE (coefficient 6)
# Le nombre 2020 a pour somme de ses chiffres 4 et il est divisible par
# 4 : 2 + 0 + 2 + 0 = 4 et 2020 : 4 = 505. 
# Mais Mathilde préfère le nombre 7 qui, 
# pense-t-elle, lui porte bonheur. 
# Quelle sera la prochaine année dont le numéro 
# a pour somme de ses chiffres 7 et qui est divisible par 7 ?

2020.upto(9999) do |year|
	digits = year.to_s.chars.map(&:to_i)
	# puts digits.join(',')
	sum = digits.reduce(:+)
	divisible_by_7 = year.remainder(7) == 0

	if sum == 7 && divisible_by_7
		puts year
		break
	end
end