require_relative '../config/environment.rb'

#recipes
spaghetti = Recipe.new
soup = Recipe.new
turd = Recipe.new 
burger = Recipe.new 
sandwich = Recipe.new 


spaghetti.name = "Daddy's Special Spaghetti"

#users
steele = User.new
gaspar = User.new 

#ingredients
carrots = Ingredient.new 
potatoes = Ingredient.new 
cheese = Ingredient.new
beans = Ingredient.new


#recipecards
gaspar.add_recipe_card(soup, "April 20th", 10)
steele.add_recipe_card(spaghetti, "March 15th", 5)
steele.add_recipe_card(turd, "March 15th", 6)
steele.add_recipe_card(burger, "March 15th", 7)
steele.add_recipe_card(sandwich, "March 15th", 8)
gaspar.add_recipe_card(spaghetti, "April 20th", 100)

#allergies
steele.declare_allergy(carrots)

#RecipeIngredients
spaghetti.add_ingredients([carrots, potatoes, cheese])

soup.add_ingredients([carrots, beans])



binding.pry
