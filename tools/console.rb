require_relative '../config/environment.rb'

user1 = User.new
user2 = User.new
user3 = User.new
ing1 = Ingredient.new
ing2 = Ingredient.new
ing3 = Ingredient.new
ing4 = Ingredient.new
ing5 = Ingredient.new
ar_ings1 = [ing1,ing2,ing5]
ar_ings2 = [ing2,ing4]
algy1 = Allergy.new(user1, ing1)
algy2 = Allergy.new(user1, ing2)
algy3 = Allergy.new(user3, ing2)
recipe1 = Recipe.new
recipe1.add_ingredients(ar_ings1)
recipe2 = Recipe.new
recipe2.add_ingredients(ar_ings2)
user1.add_recipe_card(recipe1, "2019-06-28", 8.6)
user1.add_recipe_card(recipe1, "2019-06-30", 7.5)
user1.add_recipe_card(recipe2, "2019-03-26", 5.5)
user2.add_recipe_card(recipe2, "2019-07-30", 9.2)
user3.add_recipe_card(recipe1, "2019-05-30", 7.9)

binding.pry
