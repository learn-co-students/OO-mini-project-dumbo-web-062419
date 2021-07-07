class User
    attr_reader :allergies, :recipes

    @@all = []

    def User.all
        @@all
    end

    def initialize
        @allergies = []
        @recipes = []
        @@all << self
    end

    def add_recipe_card(recipe, date, rating)
        @recipes << recipe
        recipe_card = RecipeCard.new(recipe, date, rating)
        recipe_card.user = self
        recipe.users << self
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def top_three_recipes
        recipe_ratings = []
        RecipeCard.all.each do |recipe_card|
            if recipe_card.user == self
                recipe_ratings << recipe_card.rating
            end
        end
        recipe_ratings.sort[0..2].reverse
    end

    def most_recent_recipe
        self.recipes[-1]
    end

    def safe_recipes
        ## bonus
    end
end