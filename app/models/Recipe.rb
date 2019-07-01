class Recipe 
    attr_accessor :user, :name 

    @@all = []

    def initialize 
        @@all << self
    end

    def Recipe.all
    @@all
    end

    def Recipe.most_popular
        popular = nil
        Recipe.all.each do |recipe|
            if popular == nil || recipe.users.length > popular.users.length
                popular = recipe
            end
        end
        return popular
    end

    def users
        users = []
        RecipeCard.all.each do |card|
            if card.recipe == self
            users << card.user
            end
        end
        return users
    end

    def ingredients
        ingredients = []
    RecipeIngredient.all.each do |recipe_ingredients|
        if recipe_ingredients.recipe == self 
           ingredients << recipe_ingredients.ingredient
        end
    end
    ingredients
    end

    def allergens
        allergen_array = []
        ingredients.select {|ingredient| ingredient.allergy_count > 0}
    end

    def add_ingredients(array)
        array.each do |ingredient|
            RecipeIngredient.new(self, ingredient)
        end

    end

end