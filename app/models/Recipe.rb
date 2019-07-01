class Recipe
    attr_reader :users, :ingredients

    @@all = []

    def Recipe.all
        @@all
    end

    def initialize
        @users = []
        @ingredients = []
        @@all << self
    end

    def Recipe.most_popular
        max = 0
        @@all.each do |recipe|
            if recipe.users.length > max
                max = recipe.users.length
            end
        end
        @@all.find do |recipe|
            recipe.users.length == max
        end
    end

    def add_ingredients(ingredients_array)
        ingredients_array.each do |ingredient|
            @ingredients << ingredient
            RecipeIngredient.new(self, ingredient)
        end
    end

    def allergens
        allergens = []
        @users.each do |user|
            allergens << user.allergies
        end
        allergens.flatten.uniq
    end
end