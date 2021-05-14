# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Cookbook.create(title: 'Mexican Cuisine', description: 'The five best Mexican dishes ever!')
# Cookbook.create(title: 'Caribbean Cuisine', description: 'My favorite Jamaican and Bahamian recipes.')
# Cookbook.create(title: 'Greek Cuisine', description: 'Vegetarian-friendly Greek dishes.')

Recipe.create(title: 'Elotes (Mexican Street Corn)', description: 'corn, mayonnaise, chili powder, cotija cheese, cilantro', user_id: 1, cookbook_id: 1)
Recipe.create(title: 'Bahamian Conch Salad', description: 'conch, fresh lime juice, ripe tomato, diced onion, cucumber, bell peppers, hot peppers, salt, pepper', user_id: 1, cookbook_id: 2)
Recipe.create(title: 'The Best Greek Salad', description: 'roma tomatoes, cucumbers, red onion, bell peppers, kalamta olives, feta cheese, extra virgin olive oil', user_id: 2, cookbook_id: 1)
Recipe.create(title: 'Tzatziki', description: 'plain Greek yogurt, cucumber, garlic, lemon juice, dill, extra virgin olive oil, salt, pepper', user_id: 2, cookbook_id: 1)