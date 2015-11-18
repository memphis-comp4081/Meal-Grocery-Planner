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
greencurrypaste = Ingredient.create!(description: "Green Curry Paste", unit_of_measure: "table spoon(s)")
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
tomato.pantries.push(p4)


meal1 = Meal.create!(name: "Hamburger and Fries", description: "A scrumptious meal with butter and cheese!")
meal1.save!


ml = MealList.create!()
ml.meal = meal1
ml.save!
drew.meal_lists.push(ml)
drew.save!
puts(drew.meal_lists[0].user_id)
puts(drew.meal_lists[0].meal.name)

menu = Menu.create(time: DateTime.current().middle_of_day(), meal:meal1)
menu = Menu.create(time: DateTime.now()+1, meal:meal1)
menu.save!
drew.menus.push(menu)

puts(drew.menus[0].time)
puts(drew.menus[0].meal.name)


