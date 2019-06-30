class Recipe

    @@all = []

    def initialize
        @@all << self
    end

    def all
        @@all
    end

    # return the user instances who have recipe cards with this recipe
    def users
        RecipeCard.all.select do (recipe_card)
            recipe_card.recipe == self
        end
    end

end