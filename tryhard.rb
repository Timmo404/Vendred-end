# "j'appelle "mes hash
menu = Hash.new
salade_concombre = Hash.new
frites_concombre = Hash.new
biere_concombre = Hash.new
prix = Hash.new
# jes les définie
salade_concombre['Lipides'] = 38.4
salade_concombre['Glucides'] = 18.3
salade_concombre['Protéine'] = 36.3

frites_concombre['Lipides'] = 15
frites_concombre['Glucides'] = 41
frites_concombre['Protéine'] = 3.4

biere_concombre['Lipides'] = 0
biere_concombre['Glucides'] = 25
biere_concombre['Protéine'] = 4

menu["salade_concombre"] = salade_concombre
menu["frites_concombre"] = frites_concombre
menu["biere_concombre"] = biere_concombre

salade_concombre[:prix] = 15
frites_concombre[:prix] = 4
biere_concombre[:prix] = 5

prix['salade_concombre'] = salade_concombre
prix['frites_concombre'] = frites_concombre
prix['biere_concombre'] = biere_concombre


def weight_watchers_menu(menu)
calc_calories_all = ( menu["biere_concombre"]["Lipides"] +  menu["frites_concombre"]["Lipides"] + menu["salade_concombre"]['Lipides'])*9
calc_calories_all += ( menu["salade_concombre"]['Glucides'] + menu["biere_concombre"]["Glucides"] + menu["frites_concombre"]["Glucides"])*4
calc_calories_all += ( menu["salade_concombre"]['Protéine'] + menu["biere_concombre"]["Protéine"] + menu["frites_concombre"]["Protéine"])*4
return calc_calories_all.to_i
end

def meal_price(menu)
  calc_meal_price=0
	calc_meal_price += menu["salade_concombre"][:prix]
	calc_meal_price += menu["frites_concombre"][:prix]
	calc_meal_price += menu["biere_concombre"][:prix]
	return calc_meal_price.to_i
end
puts "--"+"Le menu est à " << meal_price(menu).to_s + "€"
#puts meal_price(menu)
puts "---"+"Pour un total de : " + weight_watchers_menu(menu).to_s + " calories"
#weight_watchers_menu(menu).to_f
