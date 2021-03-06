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

p10 = Pantry.create!(quantity: 4)
kevin.pantries.push(p10)
kevin.save!
rice.pantries.push(p10)

p11 = Pantry.create!(quantity: 7)
kevin.pantries.push(p11)
kevin.save!
beef.pantries.push(p11)

p12 = Pantry.create!(quantity: 7)
kevin.pantries.push(p12)
kevin.save!
bourbon.pantries.push(p12)

image_src = File.join(Rails.root, "app/assets/images/DSC_0418-Version-2.jpg")
src_file = File.new(image_src)

image_src1 = File.join(Rails.root, "app/assets/images/rice.jpg")
src_file1 = File.new(image_src1)

image_src2 = File.join(Rails.root, "app/assets/images/IMG_9697.jpg")
src_file2 = File.new(image_src2)

image_src3 = File.join(Rails.root, "app/assets/images/feijoada2jpg_jpg_460x265_crop_upscale_q85.jpg")
src_file3 = File.new(image_src3)

image_src4 = File.join(Rails.root, "app/assets/images/lfca12.jpg")
src_file4 = File.new(image_src4)

image_src5 = File.join(Rails.root, "app/assets/images/cheeseburger-fries-homemade.jpg")
src_file5 = File.new(image_src5)

feijoada = Component.create!(description: "Feijoada",
		instructions: "Soak beans overnight. In large pan heat oil. Add garlic and half of the onions saute till fragrant. Add salted pork cook until brown. Add rinsed beans, linguica, the rest of the onion, bayleaves, cover with water, and salt and pepper to taste. Bring to boil and then simmer for at least 2 hours. Severed with scallions and parsely.",
		image: src_file3)

martinburg = Component.create!(description: "Martin Burgers",
		instructions: "Heat a heavy frying pan and sprinkle bottom lightly with table salt. Mix meat, handling lightly, just enough to form into four patties. Grill over medium-high heat about 4 minutes on each side. Pour chilled bourbon in chilled shot glass and serve meat and bourbon on a TV tray.",
		image: src_file2)

khaosoi = Component.create!(description: "Khao soi",
		instructions: "Place chiles in a small heatproof bowl, add boiling water to cover, and let soak until softened, 25–30 minutes. Drain chiles, reserving soaking liquid. Purée chiles, shallots, garlic, ginger, cilantro stems, coriander, turmeric, curry powder, and 2 Tbsp. soaking liquid in a food processor, adding more soaking liquid by tablespoonfuls, if needed, until smooth. Heat oil in a large heavy pot over medium heat. Add khao soi paste; cook, stirring constantly, until slightly darkened, 4–6 minutes. Add coconut milk and broth. Bring to a boil; add chicken. Reduce heat and simmer until chicken is fork-tender, 20–25 minutes. Transfer chicken to a plate. Let cool slightly; shred meat. Meanwhile, cook noodles according to package directions. Add chicken, 3 Tbsp. fish sauce, and sugar to soup. Season with salt or more fish sauce, if needed. Divide soup and noodles among bowls and serve with toppings.",
		image: src_file)

ricecom = Component.create!(description: "Simple Rice",
		instructions: "Add rice, water, salt, boil. Simple.",
		image: src_file1)

#feijoada seed
icF = ComponentsIngredient.create!()
blackbeans.components_ingredients.push(icF)
blackbeans.save!
feijoada.components_ingredients.push(icF)
feijoada.save!
icF = ComponentsIngredient.create!()
linguica.components_ingredients.push(icF)
linguica.save!
feijoada.components_ingredients.push(icF)
feijoada.save!
icF = ComponentsIngredient.create!()
bayleaf.components_ingredients.push(icF)
bayleaf.save!
feijoada.components_ingredients.push(icF)
feijoada.save!
icF = ComponentsIngredient.create!()
saltpork.components_ingredients.push(icF)
saltpork.save!
feijoada.components_ingredients.push(icF)
feijoada.save!
icF = ComponentsIngredient.create!()
scallion.components_ingredients.push(icF)
scallion.save!
feijoada.components_ingredients.push(icF)
feijoada.save!
icF = ComponentsIngredient.create!()
parsely.components_ingredients.push(icF)
parsely.save!
feijoada.components_ingredients.push(icF)
feijoada.save!


#hambuger seed
icF = ComponentsIngredient.create!()
beef.components_ingredients.push(icF)
beef.save!
martinburg.components_ingredients.push(icF)
martinburg.save!
icF = ComponentsIngredient.create!()
bourbon.components_ingredients.push(icF)
bourbon.save!
martinburg.components_ingredients.push(icF)
martinburg.save!

#hambuger seed 
icF = ComponentsIngredient.create!()
lemmongrass.components_ingredients.push(icF)
lemmongrass.save!
khaosoi.components_ingredients.push(icF)
khaosoi.save!
icF = ComponentsIngredient.create!()
chknbreast.components_ingredients.push(icF)
chknbreast.save!
khaosoi.components_ingredients.push(icF)
khaosoi.save!
icF = ComponentsIngredient.create!()
coconutmilk.components_ingredients.push(icF)
coconutmilk.save!
khaosoi.components_ingredients.push(icF)
khaosoi.save!
icF = ComponentsIngredient.create!()
kaffirlimeleaves.components_ingredients.push(icF)
kaffirlimeleaves.save!
khaosoi.components_ingredients.push(icF)
khaosoi.save!

#hambuger seed 
icF = ComponentsIngredient.create!()
rice.components_ingredients.push(icF)
rice.save!
ricecom.components_ingredients.push(icF)
ricecom.save!



meal1 = Meal.create!(name: "Hamburger and Fries", description: "An all American favorite.", image: src_file5)
meal1.components.push(martinburg)
meal1.save!
meal2 = Meal.create!(name: "Feijoada and Rice", description: "A Brasilian traditional dish severd with rice.", image: src_file4)
meal2.components.push(feijoada, ricecom)
meal2.save!
meal3 = Meal.create!(name: "Khao soi and Rice", description: "A Northern Thai Curry with crunchy noodles served with noodles.", image: src_file)
meal3.components.push(khaosoi)
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

