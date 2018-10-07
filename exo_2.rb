class MENU
  attr_accessor :glucides, :lipides, :protéine

def calorie_total
puts "glucides : " + glucides.to_s + " lipides : " + lipides.to_s + " protéine : " + protéine.to_s
end

def calc_calories
 glucides * glucides
 glucides * lipides
 glucides * protéine
end
end
salade_concombre = MENU.new
salade_concombre.glucides = 38.4
salade_concombre.lipides = 18.3
salade_concombre.protéine = 36.3

frites_concombre = MENU.new
frites_concombre.glucides = 15
frites_concombre.lipides = 41
frites_concombre.protéine = 3.4

biere_concombre = MENU.new
biere_concombre.glucides = 0
biere_concombre.lipides = 25
biere_concombre.protéine = 4

calories = MENU.new
calories.glucides = 9
calories.lipides = 4
calories.protéine = 4

puts salade_concombre.calorie_total
puts frites_concombre.calorie_total
puts biere_concombre.calorie_total
puts salade_concombre.calc_calories
