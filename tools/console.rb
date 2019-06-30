require_relative '../config/environment.rb'

recipe1 = Recipe.new("muffins")
user1 = User.new("joe")
ingredient1 = Ingredient.new("flour")

recipe2 = Recipe.new("pizza")
user2 = User.new("john")
ingredient2 = Ingredient.new("cheese")

recipe3 = Recipe.new("hot dog")
user3 = User.new("billy")
ingredient3 = Ingredient.new("beef")

recipe4 = Recipe.new("sandwich")
user4 = User.new("kelly")
ingredient4 = Ingredient.new("ham")

recipe5 = Recipe.new("salad")
user5 = User.new("keighleigh")
ingredient5 = Ingredient.new("greens")

recipe6 = Recipe.new("fruit punch")
user6 = User.new("ken")
ingredient6 = Ingredient.new("fruit")

allergy1 = Allergy.new(user1, ingredient1)
allergy2 = Allergy.new(user1, ingredient2)
allergy3 = Allergy.new(user2, ingredient1)
allergy4 = Allergy.new(user3, ingredient1)

recing1 = RecipeIngredient.new(recipe1, ingredient1)
recing2 = RecipeIngredient.new(recipe2, ingredient3)
recing3 = RecipeIngredient.new(recipe1, ingredient2)
recing4 = RecipeIngredient.new(recipe2, ingredient1)
recing5 = RecipeIngredient.new(recipe1, ingredient3)
recing5 = RecipeIngredient.new(recipe1, ingredient4)
recing5 = RecipeIngredient.new(recipe1, ingredient5)
recing5 = RecipeIngredient.new(recipe3, ingredient5)
recipe6.add_ingredients([ingredient4, ingredient5, ingredient6])

card1 = RecipeCard.new(Time.now, 5, user1, recipe1)
card2 = RecipeCard.new(Time.now, 1, user1, recipe2)
card3 = RecipeCard.new(Time.now, 3, user1, recipe3)
card4 = RecipeCard.new(Time.now, 6, user1, recipe4)
card5 = RecipeCard.new(Time.now, 4, user1, recipe5)
card6 = RecipeCard.new(Time.now, 5, user2, recipe1)
card7 = RecipeCard.new(Time.now, 4, user2, recipe2)


most_allergic = Ingredient.most_common_allergen


binding.pry
