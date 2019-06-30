class Recipe

	attr_accessor :name
	@@all = []

	def initialize(name = nil)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def self.most_popular
		#should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
		#RecipeCard.all.select those that match recipe and count highest number of users
		max_index = 0
		max_users = 0
		@@all.each_with_index do |i, recipe| 
			if recipe.users.length > max_users
				max_index = i
			end
		end
		@@all[i]
	end

	def users
		# should return the user instances who have recipe cards with this recipe
		RecipeCard.all.select{|card| card.recipe == self}.map{|recipe| recipe.user}.uniq
	end

	def num_users
		self.users.length
	end

	
	def ingredients 
		# should return all of the ingredients in this recipe
		RecipeIngredient.all.select{|recing| recing.recipe == self}.map{|recipe| recipe.ingredient}.uniq
	end

	
	def allergens
		# should return all of the Ingredients in this recipe that are allergens for Users in our system.
		# get the ingredients related to this recipe from RecipeIngredient
		self.ingredients.select do |ingredient|
			Allergy.all.find{|allergen| allergen.ingredient == ingredient}
		end
		
		# keep the ingredients that are an allergen for any user in the Allergy class
	end

	
	def add_ingredients(ing_arr) 
		# should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
		# loop through ingredient array and create a new recipeingredient object with this recipe and each ingredient
		ing_arr.each do |ingredient|
			RecipeIngredient.new(self, ingredient)
		end
	end

end