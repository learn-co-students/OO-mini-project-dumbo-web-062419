class User

	attr_accessor :name

	@@all = []

	def initialize(name = nil)
		@name = name
		@@all << self
	end

	def self.all
		#should return all of the user instances
		@@all
	end

	def cards
		RecipeCard.all.select{|rc| rc.user == self}
	end

	def recipes
		# should return all of the recipes this user has recipe cards for
		self.cards.map{|card| card.recipe}.uniq
	end

	def add_recipe_card(recipe, date, rating)
		# should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
		RecipeCard.new(date, rating, self, recipe)
	end

	def declare_allergy(ingredient)
		# should accept an Ingredient instance as an argument, and create a new Allergy instance for this User and the given Ingredient
		Allergy.new(self, ingredient)
	end

	def allergens 
		# should return all of the ingredients this user is allergic to
		Allergy.all.select{|allergy| allergy.user == self}
	end

	def top_three_recipes 
		# should return the top three highest rated recipes for this user.

		sorted_recipes = self.cards.sort{|a, b| b.rating <=> a.rating}
		if sorted_recipes.length >= 3
			sorted_recipes[0..2]
		else
			sorted_recipes
		end
	end

	def most_recent_recipe 
		# should return the recipe most recently added to the user's cookbook
		cards = self.cards
		self.cards[cards.length - 1].recipe
	end
end