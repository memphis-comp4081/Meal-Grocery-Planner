# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

jonathan = User.create!(email: "jonathan@memphis.edu", password: "password",
						password_confirmation: "password")
kevin = User.create!(email: "kevin@memphis.edu", password: "password",
					 password_confirmation: "password")
cletus = User.create!(email: "cletus@memphis.edu", password: "password",
						password_confirmation: "password")
drew = User.create!(email: "drew@memphis.edu", password: "password",
					 password_confirmation: "password")
paul = User.create!(email: "paul@memphis.edu", password: "password",
						password_confirmation: "password")
paul.Datum.create!(f_name: "Paul", l_name: "edwards")

beef = Ingredient.create!(description: "Ground Beef", unit_of_measure: "pound(s)")
bun = Ingredient.create!(description: "Hamburger Bun", unit_of_measure: "bun(s)")
chicken = Ingredient.create!(description: "Chicken Wing", unit_of_measure: "wing(s)")
tomato = Ingredient.create!(description: "Tomato", unit_of_measure: "tomato(es)")
garlic = Ingredient.create!(description: "Garlic", unit_of_measure: "clove(s)")
milk = Ingredient.create!(description: "Milk", unit_of_measure: "cup(s)")
onion = Ingredient.create!(description: "Onion", unit_of_measure: "bulb(s)")
ginger = Ingredient.create!(description: "Ginger", unit_of_measure: "inch(es)")
jalapeno = Ingredient.create!(description: "Jalapeno", unit_of_measure: "pepper(s)")
coconutmilk = Ingredient.create!(description: "Coconut Milk", unit_of_measure: "cup(s)")
lime = Ingredient.create!(description: "Lime", unit_of_measure: "lime(s)")
potato = Ingredient.create!(description: "Potato", unit_of_measure: "potato(es)")
groundpork = Ingredient.create!(description: "Ground Pork", unit_of_measure: "pound(s)")
lemmongrass = Ingredient.create!(description: "Lemmon Grass", unit_of_measure: "stalk(s)")
greencurrypaste = Ingredient.create!(description: "Green Curry Paste", unit_of_measure: "tablespoon(s)")
chknbreast = Ingredient.create!(description: "Chicken Breasts", unit_of_measure: "pound(s)")
rice = Ingredient.create!(description: "Rice", unit_of_measure: "cup(s)")
blackbeans = Ingredient.create!(description: "Black Beans", unit_of_measure: "cup(s)")
linguica = Ingredient.create!(description: "Linguica", unit_of_measure: "sauage(s)")
bayleaf = Ingredient.create!(description: "Bay Leaf", unit_of_measure: "leaf(ves)")
saltpork = Ingredient.create!(description: "Salted Pork", unit_of_measure: "pound(s)")
scallion = Ingredient.create!(description: "Scallion", unit_of_measure: "bunch(es)")
parsely = Ingredient.create!(description: "Parsely", unit_of_measure: "bunch(es)")
cilantro = Ingredient.create!(description: "Cilantro", unit_of_measure: "bunch(es)")
lettuce = Ingredient.create!(description: "Leaf Lettue", unit_of_measure: "bunch(es)")
chedderch = Ingredient.create!(description: "Cheddar Cheese", unit_of_measure: "slice(s)")
bourbon = Ingredient.create!(description: "Bourbon", unit_of_measure: "ounce(s)")
bambooshoots = Ingredient.create!(description: "Bamboo Shoots", unit_of_measure: "ounce(s)")
kaffirlimeleaves = Ingredient.create!(description: "Kaffir Lime Leaves", unit_of_measure: "leaf(ves)")
redchilies = Ingredient.create!(description: "Red Chilies", unit_of_measure: "pepper(s)")
palmsugar = Ingredient.create!(description: "Palm Sugar", unit_of_measure: "tablespoons(s)")
fishsauce = Ingredient.create!(description: "Fish Sauce", unit_of_measure: "tablespoons(s)")

p1 = Pantry.create!(quantity: 1.5)
jonathan.pantries.push(p1)
jonathan.save!
beef.pantries.push(p1)
beef.save!

p2 = Pantry.create!(quantity: 8)
jonathan.pantries.push(p2)
jonathan.save!
bun.pantries.push(p2)
bun.save!

p3 = Pantry.create!(quantity: 30)
kevin.pantries.push(p3)
kevin.save!
chicken.pantries.push(p3)
chicken.save!

p4 = Pantry.create!(quantity: 2)
kevin.pantries.push(p4)
kevin.save!
saltpork.pantries.push(p4)

p5 = Pantry.create!(quantity: 2)
kevin.pantries.push(p5)
kevin.save!
bayleaf.pantries.push(p5)

p6 = Pantry.create!(quantity: 2)
kevin.pantries.push(p6)
kevin.save!
linguica.pantries.push(p6)

p7 = Pantry.create!(quantity: 2)
kevin.pantries.push(p7)
kevin.save!
blackbeans.pantries.push(p7)

p8 = Pantry.create!(quantity: 2)
kevin.pantries.push(p8)
kevin.save!
parsely.pantries.push(p8)

p9 = Pantry.create!(quantity: 2)
kevin.pantries.push(p9)
kevin.save!
scallion.pantries.push(p9)

feijoada = Component.create!(description: "Feijoada",
		instructions: "Soak beans overnight. In large pan heat oil. Add garlic and half of the onions saute till fragrant. Add salted pork cook until brown. Add rinsed beans, linguica, the rest of the onion, bayleaves, cover with water, and salt and pepper to taste. Bring to boil and then simmer for at least 2 hours. Severed with scallions and parsely.")

martinburg = Component.create!(description: "Martin Burgers",
		instructions: "Heat a heavy frying pan and sprinkle bottom lightly with table salt. Mix meat, handling lightly, just enough to form into four patties. Grill over medium-high heat about 4 minutes on each side. Pour chilled bourbon in chilled shot glass and serve meat and bourbon on a TV tray.")

thaigreen = Component.create!(description: "Thai Green Curry",
		instructions: "Heat up a pot over medium heat and add the oil. Saute the green curry paste until aromatic, add the chicken and stir to combine well with the curry paste. Add the coconut milk and water and bring it to a quick boil. Add the bamboo shoots, kaffir lime leaves, and red chilies. Lower the heat to simmer, cover the pot and let simmer for 10 minutes or until the curry slightly thickens. Add the fish sauce, sugar, and basil leaves. Stir to mix well.")

ricecom = Component.create!(description: "Simple Rice",
		instructions: "Add rice, water, salt, boil. Simple.")

icF = ComponentsIngredient.create!()

blackbeans.components_ingredients.push(icF)
blackbeans.save!
linguica.components_ingredients.push(icF)
linguica.save!
bayleaf.components_ingredients.push(icF)
bayleaf.save!
saltpork.components_ingredients.push(icF)
saltpork.save!
scallion.components_ingredients.push(icF)
scallion.save!
parsely.components_ingredients.push(icF)
parsely.save!


feijoada.components_ingredients.push(icF)
feijoada.save!


meal1 = Meal.create!(name: "Hamburger and Fries", description: "An all American favorite.")
meal1.components.push(martinburg)
meal1.save!
meal2 = Meal.create!(name: "Feijoada and Rice", description: "A Brasilian traditional dish severd with rice.")
meal2.components.push(feijoada, ricecom)
meal2.save!
meal3 = Meal.create!(name: "Thai Green Curry and Rice", description: "A Thai Green Curry with rice served for special occasions.")
meal3.components.push(thaigreen)
meal3.components.push(ricecom)
meal3.save!



ml = MealList.create!()
ml.meal = meal1
ml.save!
drew.meal_lists.push(ml)
drew.save!

ml1 = MealList.create!()
ml1.meal = meal3
ml1.save!
cletus.meal_lists.push(ml1)
cletus.save!

ml2 = MealList.create!()
ml2.meal = meal2
ml2.save!
kevin.meal_lists.push(ml2)
kevin.save!
# puts(drew.meal_lists[0].user_id)
# puts(drew.meal_lists[0].meal.name)

# menu = Menu.create(time: DateTime.current().middle_of_day(), meal:meal1)
# menu = Menu.create(time: DateTime.now()+1, meal:meal1)
# menu.save!
# drew.menus.push(menu)

# puts(drew.menus[0].time)
# puts(drew.menus[0].meal.name)

# menu = Menu.create(time: DateTime.now()+1, meal:meal)
# menu.save!
# drew.menus.push(menu)


# meal2 = Meal.create!(name: "Burgers and Fries", description: "A Hamburger and fries.")
# m2 = MealList.create!()
# m2.meal = meal
# m2.save!
# kevin.meal_lists.push(m2)
# kevin.save!

# menu2 = Menu.create(time: DateTime.now()+1, meal:meal)
# menu2.save!
# kevin.menus.push(menu2)

