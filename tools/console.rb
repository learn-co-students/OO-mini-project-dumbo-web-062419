require_relative '../config/environment.rb'

user1 = User.new

ingredient1 = Ingredient.new

recipe1 = Recipe.new

allergy1 = Allergy.new(user1,ingredient1)

recipe_card1 = RecipeCard.new(user1,recipe1)

recipe_ingredient1 = RecipeIngredient.new(recipe1,ingredient1)

binding.pry
