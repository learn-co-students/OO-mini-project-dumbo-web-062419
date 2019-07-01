class User 

    attr_accessor :allergy

    @@all = []

    def initialize 
        @@all << self
    end

    def User.all 
        @@all 
    end

    def recipes
        RecipeCard.all.select {|card| card.user == self}
    end

    def add_recipe_card(recipe, date, rating)
        recipe_card = RecipeCard.new(recipe, date, rating)
        recipe_card.user = self
    end

    def declare_allergy(ingredient)
    new_allergy = Allergy.new(ingredient)
    new_allergy.user = self
    ingredient.allergy_count += 1
    end

    def allergens
        Allergy.all.select {|allergy| allergy.user == self}
    end

    def top_three_recipes
       array = recipes.sort_by{|recipes| recipes.rating}
       sorted = [array[-1], array[-2], array[-3]]   
    end

    def most_recent_recipe
        recipes[-1]
    end

    def safe_recipes

    end


end