calories = salade_concombre = frites_concombre = biere_concombre = menu =Hash.new


#menu =
#[
salade_concombre = {'Lipides':38.4,'Glucides':18.3,'Protéines':36.3},
#frites_concombre = { 'Lipides':15,'Glucides':41,'Protéines':3.4 },
#biere_concombre = { 'Lipides':0,'Glucides':25,'Protéines':3.4}
#]
calories = {'Lipides':9,'Glucides':4,'Protéines':4}


#biere_concombre["Lipides"] = 2
#biere_concombre["Glucides"] = 25
#biere_concombre["Protéines"] = 4


def weight_watchers(salade_concombre,calories)
	calc_calories = salade_concombre[:'Lipides'] * calories[:'Lipides']
	calc_calories += salade_concombre[:'Glucides'] * calories[:'Glucides']
	calc_calories += salade_concombre[:'Protéines'] * calories[:'Protéines']
	return calc_calories
end

puts "La valeur calorique de la salade aux concombre est de :"<<weight_watchers(salade_concombre,calories).to_s
#puts "la valeur calorique de la salade du concombre est de :"<<weight_watchers_menu(menu,calories,salade_concombre,frites_concombre,biere_concombre).to_s
