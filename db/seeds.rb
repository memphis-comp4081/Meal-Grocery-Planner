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
bun = Ingredient.create!(description: "Hamburger Bun(s)", unit_of_measure: "bun(s)")
chicken = Ingredient.create!(description: "Chicken Wing(s)", unit_of_measure: "wing(s)")
tomato = Ingredient.create!(description: "Tomato(es)", unit_of_measure: "tomato(es)")

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


meal = Meal.create!(name: "Tasty Food", description: "A scrumptious meal with butter and cheese!")
meal.save!
ml = MealList.create!()
ml.meal = meal
ml.save!
drew.meal_lists.push(ml)
drew.save!
puts(drew.meal_lists[0].user_id)
puts(drew.meal_lists[0].meal.name)

menu = Menu.create(time: DateTime.current().middle_of_day(), meal:meal)
menu = Menu.create(time: DateTime.now()+1, meal:meal)
menu.save!
drew.menus.push(menu)

puts(drew.menus[0].time)
puts(drew.menus[0].meal.name)


